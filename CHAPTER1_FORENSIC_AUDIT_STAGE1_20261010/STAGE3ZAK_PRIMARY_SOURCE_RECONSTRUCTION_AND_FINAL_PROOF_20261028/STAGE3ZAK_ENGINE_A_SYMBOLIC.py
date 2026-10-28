"""Stage 3Z-AK Engine A — SymPy + numeric component identities (independent of Engine B)."""
from __future__ import annotations

import json
import math
import pathlib
import sys

import sympy as sp
from scipy.special import sph_harm_y, spherical_jn, spherical_yn


def sympy_re_antisymmetry() -> dict:
    h, v = sp.symbols("h v", complex=True)
    S = sp.Symbol("S", real=True)
    hv_re = sp.re(h * sp.conjugate(v))
    cross_sum = sp.expand(-2 * sp.I * S * hv_re)
    re_cross = sp.simplify(sp.re(cross_sum))
    im_hv = sp.simplify(sp.im(2 * hv_re))
    MN = -sp.I * h * sp.conjugate(v) * S
    NM = -sp.I * v * sp.conjugate(h) * S
    neg_fail = sp.simplify(NM + MN)  # not identically -MN in general
    return dict(
        hv_sum_imag=str(im_hv),
        Re_cross_sum=str(re_cross),
        complex_negation_note="NM+MN is purely imaginary when S is real",
        sympy_ok=float(im_hv == 0 and re_cross == 0),
    )


def numeric_sweep() -> dict:
    worst = dict(rel_f=0.0, Re_sum=0.0, Re_MM=0.0, complex_sum=0.0)
    for l, m in [(1, 1), (2, -2), (5, 2), (3, 0)]:
        for z in (4.5, 19.0, 40.0):
            sig = math.sqrt(l * (l + 1))
            h = spherical_jn(l, z) - 1j * spherical_yn(l, z)
            hp = spherical_jn(l, z, derivative=True) - 1j * spherical_yn(l, z, derivative=True)
            v = (h + z * hp) / z
            S_ref = None
            for th, ph in ((0.55, 0.3), (1.1, 2.4), (2.6, 5.1)):
                st = max(math.sin(th), 1e-12)
                dth = 1e-9
                Y = sph_harm_y(l, m, th, ph)
                dY = (sph_harm_y(l, m, th + dth, ph) - sph_harm_y(l, m, th - dth, ph)) / (2 * dth)
                Yth, Yph = (m * Y) / (sig * st), (1j * dY) / sig
                S = abs(Yth) ** 2 + abs(Yph) ** 2
                Mth, Mph = h * Yth, h * Yph
                up = h + z * hp
                Nth, Nph = -(1j * up / z) * Yph, (1j * up / z) * Yth
                MN = Mth * Nph.conjugate() - Mph * Nth.conjugate()
                NM = Nth * Mph.conjugate() - Nph * Mth.conjugate()
                MM = Mth * Mph.conjugate() - Mph * Mth.conjugate()
                MNf = -1j * h * v.conjugate() * S
                NMf = -1j * v * h.conjugate() * S
                worst["rel_f"] = max(worst["rel_f"], max(abs(MN - MNf), abs(NM - NMf)) / max(abs(MNf), 1e-30))
                worst["Re_sum"] = max(worst["Re_sum"], abs((MN + NM).real))
                worst["Re_MM"] = max(worst["Re_MM"], abs(MM.real))
                worst["complex_sum"] = max(worst["complex_sum"], abs(NM + MN) / max(abs(MN), 1e-30))
    sym = sympy_re_antisymmetry()
    ok = (
        worst["rel_f"] < 1e-11
        and worst["Re_sum"] < 1e-14
        and worst["Re_MM"] < 1e-14
        and sym["hv_sum_imag"] == "0"
        and sym["Re_cross_sum"] == "0"
        and sym.get("sympy_ok", 0) == 1.0
        and worst["complex_sum"] > 0.01
    )
    return dict(**worst, **sym, ok=float(ok))


def main() -> int:
    summary = numeric_sweep()
    print(json.dumps(summary, default=str))
    root = pathlib.Path(__file__).resolve().parent.parent
    root.joinpath("ENGINE_A_RESULTS.json").write_text(json.dumps(summary, indent=2, default=str), encoding="utf-8")
    return 0 if summary["ok"] else 1


if __name__ == "__main__":
    sys.exit(main())
