"""Stage 3Z-AK Engine B — direct E/H, Poynting + Maxwell T_rphi quadrature (fresh implementation)."""
from __future__ import annotations

import json
import math
import pathlib
import random
import sys

from numpy.polynomial.legendre import leggauss
from scipy.special import sph_harm_y, spherical_jn, spherical_yn

MU0 = 4e-7 * math.pi
EPS0 = 8.854187817e-12
C0 = 1 / math.sqrt(MU0 * EPS0)
Z0 = math.sqrt(MU0 / EPS0)
FREQ = 1e9
K = 2 * math.pi * FREQ / C0
OMEGA = 2 * math.pi * FREQ


def vsh_components(l: int, m: int, th: float, ph: float) -> tuple[complex, complex, complex]:
    sig = math.sqrt(l * (l + 1))
    st = max(math.sin(th), 1e-12)
    dth = 1e-7
    Y = sph_harm_y(l, m, th, ph)
    dY = (sph_harm_y(l, m, th + dth, ph) - sph_harm_y(l, m, th - dth, ph)) / (2 * dth)
    return Y, (m * Y) / (sig * st), (1j * dY) / sig


def hankel_pair(l: int, z: float, branch: str) -> tuple[complex, complex]:
    if branch == "out":
        h = spherical_jn(l, z) - 1j * spherical_yn(l, z)
        hp = spherical_jn(l, z, derivative=True) - 1j * spherical_yn(l, z, derivative=True)
    else:
        h = spherical_jn(l, z) + 1j * spherical_yn(l, z)
        hp = spherical_jn(l, z, derivative=True) + 1j * spherical_yn(l, z, derivative=True)
    return h, h + z * hp


def fields_at(l, m, a, b, th, ph, z, branch="out", flip_n=False):
    sig = math.sqrt(l * (l + 1))
    Y, Yth, Yph = vsh_components(l, m, th, ph)
    h, up = hankel_pair(l, z, branch)
    Mth, Mph = h * Yth, h * Yph
    sgn = -1.0 if flip_n else 1.0
    Nth = sgn * (-(1j * up / z) * Yph)
    Nph = sgn * ((1j * up / z) * Yth)
    Nr = sgn * (-(sig / z) * h * Y)
    Er = -(K**2) * Z0 * (a * 0 + b * Nr)
    Eth = -(K**2) * Z0 * (a * Mth + b * Nth)
    Eph = -(K**2) * Z0 * (a * Mph + b * Nph)
    Hr = -(K**2) * (a * Nr - b * 0)
    Hth = -(K**2) * (a * Nth - b * Mth)
    Hph = -(K**2) * (a * Nph - b * Mph)
    return Er, Eth, Eph, Hr, Hth, Hph


def fluxes(l, m, a, b, kR, n_theta, n_phi, branch="out", use_conj=True, flip_n=False):
    R = kR / K
    z = kR
    nodes, wts = leggauss(n_theta)
    P = Jz = 0.0
    dph = 2 * math.pi / n_phi
    for mu, wt in zip(nodes, wts):
        th = math.acos(float(mu))
        st = max(math.sin(th), 1e-12)
        for j in range(n_phi):
            ph = (j + 0.5) * dph
            Er, Eth, Eph, Hr, Hth, Hph = fields_at(l, m, a, b, th, ph, z, branch, flip_n)
            if use_conj:
                Hc = (Hr.conjugate(), Hth.conjugate(), Hph.conjugate())
                Ec = (Er.conjugate(), Eth.conjugate(), Eph.conjugate())
            else:
                Hc = (Hr, Hth, Hph)
                Ec = (Er, Eth, Eph)
            Sr = 0.5 * (Eth * Hc[2] - Eph * Hc[1]).real
            Trp = 0.5 * (EPS0 * (Er * Ec[2]).real + MU0 * (Hr * Hc[2]).real)
            dS = R * R * wt * dph
            P += Sr * dS
            Jz += -(R * st * Trp) * R * R * wt * dph
    return P, Jz


def main() -> int:
    random.seed(20261028)
    P0 = 0.5 * K**2 * Z0
    conv = []
    for n in (28, 40, 52):
        conv.append(fluxes(1, 1, 1.0, 0.0, 24.0, n, 2 * n)[0])
    conv_rel = abs(conv[-1] - conv[-2]) / max(abs(conv[-1]), 1e-30)
    worst = dict(P_rel=0.0, law=0.0)
    cases = [(1, 1, 1, 0), (2, -1, 0.7 + 0.2j, -0.4 + 0.9j), (3, 2, 1.2, 0.5j), (4, -3, 0.3, 0.3)]
    for l, m, a, b in cases:
        if isinstance(a, complex):
            aa, bb = a, b
        else:
            aa, bb = complex(a, 0), complex(b, 0)
        P, J = fluxes(l, m, aa, bb, 20.0 + l, 44, 88)
        pred = (abs(aa) ** 2 + abs(bb) ** 2) * P0
        worst["P_rel"] = max(worst["P_rel"], abs(P - pred) / max(pred, 1e-30))
        worst["law"] = max(worst["law"], abs(J - (m / OMEGA) * P) / max(abs(P), 1e-30))
    Pin, _ = fluxes(1, 1, 1, 0, 22.0, 36, 72, branch="in")
    P_nc, _ = fluxes(1, 1, 1, 0, 22.0, 36, 72, use_conj=False)
    P_flip, _ = fluxes(1, 1, 1, 0, 22.0, 36, 72, flip_n=True)
    P_ok, _ = fluxes(1, 1, 1, 0, 22.0, 36, 72)
    summary = dict(
        conv_rel=conv_rel,
        worst_P_rel=worst["P_rel"],
        worst_law=worst["law"],
        incoming_P=Pin,
        noconj_rel=abs(P_nc - P_ok) / max(abs(P_ok), 1e-30),
        flip_n_rel=abs(P_flip - P_ok) / max(abs(P_ok), 1e-30),
        ok=float(
            worst["P_rel"] < 2e-2
            and worst["law"] < 2e-2
            and conv_rel < 1e-3
            and Pin < 0
            and abs(P_nc - P_ok) / abs(P_ok) > 0.05
            and abs(P_flip - P_ok) / abs(P_ok) > 0.05
        ),
    )
    print(json.dumps(summary, default=float))
    root = pathlib.Path(__file__).resolve().parent.parent
    root.joinpath("ENGINE_B_RESULTS.json").write_text(json.dumps(summary, indent=2, default=float), encoding="utf-8")
    (root / "logs").mkdir(exist_ok=True)
    (root / "logs" / "ENGINE_B_CONVERGENCE.json").write_text(json.dumps({"conv_series": conv, "n_theta": [28, 40, 52]}, indent=2), encoding="utf-8")
    return 0 if summary["ok"] else 1


if __name__ == "__main__":
    sys.exit(main())
