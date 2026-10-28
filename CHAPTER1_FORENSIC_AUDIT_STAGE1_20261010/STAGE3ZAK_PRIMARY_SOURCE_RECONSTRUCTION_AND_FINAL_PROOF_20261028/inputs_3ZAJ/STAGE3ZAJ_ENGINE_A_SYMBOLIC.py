"""Stage 3Z-AJ Engine A: independent numeric component algebra (no Engine B code)."""
from __future__ import annotations

import json
import math
import pathlib
import random
import sys

from scipy.special import sph_harm_y, spherical_jn, spherical_yn


def cross_audit(l, m, th, ph, z):
    sig = math.sqrt(l * (l + 1))
    st = max(math.sin(th), 1e-12)
    dth = 1e-10
    Y = sph_harm_y(l, m, th, ph)
    dthY = (sph_harm_y(l, m, th + dth, ph) - sph_harm_y(l, m, th - dth, ph)) / (2 * dth)
    Yth = (m * Y) / (sig * st)
    Yph = (1j * dthY) / sig
    h = spherical_jn(l, z) - 1j * spherical_yn(l, z)
    hp = spherical_jn(l, z, derivative=True) - 1j * spherical_yn(l, z, derivative=True)
    up = h + z * hp
    v = up / z
    S = abs(Yth) ** 2 + abs(Yph) ** 2
    Mth, Mph = h * Yth, h * Yph
    Nth, Nph = -(1j * up / z) * Yph, (1j * up / z) * Yth
    MN = Mth * Nph.conjugate() - Mph * Nth.conjugate()
    NM = Nth * Mph.conjugate() - Nph * Mth.conjugate()
    MNf = -1j * h * v.conjugate() * S
    NMf = -1j * v * h.conjugate() * S
    MM = Mth * Mph.conjugate() - Mph * Mth.conjugate()
    return dict(
        rel_f=max(abs(MN - MNf), abs(NM - NMf)) / max(abs(MNf), 1e-30),
        Re_sum=abs((MN + NM).real),
        Re_MM=abs(MM.real),
        complex_sum=abs(MN + NM) / max(abs(MN), 1e-30),
    )


def main():
    worst = dict(rel_f=0.0, Re_sum=0.0, Re_MM=0.0, complex_sum=0.0)
    for l, m in [(1, 1), (2, -1), (4, 3)]:
        for z in (6.0, 22.0, 35.0):
            for th, ph in ((0.6, 0.2), (1.3, 1.7), (2.2, 4.0)):
                r = cross_audit(l, m, th, ph, z)
                for k in worst:
                    worst[k] = max(worst[k], r[k])
    MU0 = 4e-7 * math.pi
    EPS0 = 8.854187817e-12
    Z0 = math.sqrt(MU0 / EPS0)
    K = 2 * math.pi * 1e9 / math.sqrt(MU0 * EPS0)
    from numpy.polynomial.legendre import leggauss

    def int_mixed(a, b, l=1, m=1, kR=25.0, nmu=32):
        sig = math.sqrt(l * (l + 1))
        R = kR / K
        z = kR
        h = spherical_jn(l, z) - 1j * spherical_yn(l, z)
        hp = spherical_jn(l, z, derivative=True) - 1j * spherical_yn(l, z, derivative=True)
        up = h + z * hp
        nodes, wts = leggauss(nmu)
        P = 0.0
        dph = 2 * math.pi / 64
        for mu, w in zip(nodes, wts):
            th = math.acos(float(mu))
            st = max(math.sin(th), 1e-12)
            for ip in range(64):
                ph = (ip + 0.5) * dph
                Y = sph_harm_y(l, m, th, ph)
                dY = (sph_harm_y(l, m, th + 1e-8, ph) - sph_harm_y(l, m, th - 1e-8, ph)) / (2e-8)
                Yth, Yph = (m * Y) / (sig * st), (1j * dY) / sig
                Mth, Mph = h * Yth, h * Yph
                Nth = -(1j * up / z) * Yph
                Nph = (1j * up / z) * Yth
                Nr = -(sig / z) * h * Y
                Er = -(K**2) * Z0 * (b * Nr)
                Eth = -(K**2) * Z0 * (a * Mth + b * Nth)
                Eph = -(K**2) * Z0 * (a * Mph + b * Nph)
                Hr = -(K**2) * (a * Nr)
                Hth = -(K**2) * (a * Nth - b * Mth)
                Hph = -(K**2) * (a * Nph - b * Mph)
                Sr = 0.5 * (Eth * Hph.conjugate() - Eph * Hth.conjugate())
                P += Sr.real * R * R * w * dph
        return P

    P0 = 0.5 * K**2 * Z0
    a, b = 1.0, 1.0j
    P = int_mixed(a, b)
    worst["mixed_P_rel"] = abs(P - 2 * P0) / (2 * P0)
    summary = dict(**worst, ok=worst["rel_f"] < 1e-12 and worst["Re_sum"] < 1e-12 and worst["Re_MM"] < 1e-12 and worst["mixed_P_rel"] < 5e-3)
    print(json.dumps(summary, default=float))
    root = pathlib.Path(__file__).resolve().parent.parent
    root.joinpath("ENGINE_A_RESULTS.json").write_text(json.dumps(summary, indent=2, default=float), encoding="utf-8")
    return 0 if summary["ok"] else 1


if __name__ == "__main__":
    sys.exit(main())
