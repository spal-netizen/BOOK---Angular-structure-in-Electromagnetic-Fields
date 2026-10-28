"""Stage 3Z-AJ Engine B: Maxwell stress + Poynting from curl-built fields (independent path)."""
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
K = 2 * math.pi * 1e9 / C0
OMEGA = 2 * math.pi * 1e9


def outgoing_fields(l, m, a, b, th, ph, z, branch="out"):
    sig = math.sqrt(l * (l + 1))
    st = max(math.sin(th), 1e-12)
    dth = 1e-8
    Y = sph_harm_y(l, m, th, ph)
    dY = (sph_harm_y(l, m, th + dth, ph) - sph_harm_y(l, m, th - dth, ph)) / (2 * dth)
    Yth, Yph = (m * Y) / (sig * st), (1j * dY) / sig
    if branch == "out":
        h = spherical_jn(l, z) - 1j * spherical_yn(l, z)
        dz = max(1e-9 * z, 1e-11)
        up = ((z + dz) * (spherical_jn(l, z + dz) - 1j * spherical_yn(l, z + dz)) - (z - dz) * (spherical_jn(l, z - dz) - 1j * spherical_yn(l, z - dz))) / (2 * dz)
    else:
        h = spherical_jn(l, z) + 1j * spherical_yn(l, z)
        dz = max(1e-9 * z, 1e-11)
        up = ((z + dz) * (spherical_jn(l, z + dz) + 1j * spherical_yn(l, z + dz)) - (z - dz) * (spherical_jn(l, z - dz) + 1j * spherical_yn(l, z - dz))) / (2 * dz)
    Mth, Mph = h * Yth, h * Yph
    Nr = -(sig / z) * h * Y
    Nth, Nph = -(1j * up / z) * Yph, (1j * up / z) * Yth
    Er = -(K**2) * Z0 * (a * 0 + b * Nr)
    Eth = -(K**2) * Z0 * (a * Mth + b * Nth)
    Eph = -(K**2) * Z0 * (a * Mph + b * Nph)
    Hr = -(K**2) * (a * Nr - b * 0)
    Hth = -(K**2) * (a * Nth - b * Mth)
    Hph = -(K**2) * (a * Nph - b * Mph)
    return Er, Eth, Eph, Hr, Hth, Hph


def integrate(l, m, a, b, kR=25.0, nmu=40, branch="out", omit_conj=False):
    R = kR / K
    z = kR
    nodes, wts = leggauss(nmu)
    P = J = 0.0
    dph = 2 * math.pi / (2 * nmu)
    for mu, w in zip(nodes, wts):
        th = math.acos(float(mu))
        st = max(math.sin(th), 1e-12)
        for ip in range(2 * nmu):
            ph = (ip + 0.5) * dph
            Er, Eth, Eph, Hr, Hth, Hph = outgoing_fields(l, m, a, b, th, ph, z, branch)
            if omit_conj:
                Hph_c, Hth_c, Eph_c = Hph, Hth, Eph
            else:
                Hph_c, Hth_c, Eph_c = Hph.conjugate(), Hth.conjugate(), Eph.conjugate()
            Sr = 0.5 * (Eth * Hph_c - Eph * Hth_c)
            Tr = 0.5 * (EPS0 * (Er * Eph_c).real + MU0 * (Hr * Hph_c).real)
            P += Sr.real * R * R * w * dph
            J += -(R * st * Tr) * R * R * w * dph
    return P, J


def main():
    random.seed(21)
    P0 = 0.5 * K**2 * Z0
    conv = []
    for nmu in (24, 36, 48):
        P, J = integrate(1, 1, 1.0, 1.0j, nmu=nmu)
        conv.append(P)
    conv_rel = abs(conv[-1] - conv[-2]) / max(abs(conv[-1]), 1e-30)
    worst = dict(P=0.0, law=0.0)
    for _ in range(10):
        a = complex(random.uniform(-1.5, 1.5), random.uniform(-1.5, 1.5))
        b = complex(random.uniform(-1.5, 1.5), random.uniform(-1.5, 1.5))
        if abs(a) + abs(b) < 0.2:
            continue
        P, J = integrate(2, -1, a, b, kR=18.0)
        pred = (abs(a) ** 2 + abs(b) ** 2) * P0
        worst["P"] = max(worst["P"], abs(P - pred) / pred)
        worst["law"] = max(worst["law"], abs(J - (-1 / OMEGA) * P) / max(abs(P), 1e-30))
    P_ok, _ = integrate(1, 1, 1, 0)
    P_nc, _ = integrate(1, 1, 1, 0, omit_conj=True)
    summary = dict(
        conv_rel=conv_rel,
        worst_P_rel=worst["P"],
        worst_law=worst["law"],
        incoming_P=integrate(1, 1, 1, 0, branch="in")[0],
        noconj_delta=abs(P_nc - P_ok) / P_ok,
        ok=float(worst["P"] < 5e-3 and worst["law"] < 5e-3 and conv_rel < 5e-4 and integrate(1, 1, 1, 0, branch="in")[0] < 0 and abs(P_nc - P_ok) / P_ok > 0.05),
    )
    print(json.dumps(summary, default=float))
    root = pathlib.Path(__file__).resolve().parent.parent
    root.joinpath("ENGINE_B_RESULTS.json").write_text(json.dumps(summary, indent=2, default=float), encoding="utf-8")
    return 0 if summary["ok"] else 1


if __name__ == "__main__":
    sys.exit(main())
