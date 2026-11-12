"""Independent numeric checks for Chapter 1 dipole shell ratios (R12.1)."""
from __future__ import annotations

import math

C0 = 299792458.0
EPS0 = 8.8541878128e-12
MU0 = 4e-7 * math.pi


def prad(p0: float, omega: float) -> float:
    return (omega**4 * p0**2) / (12 * math.pi * EPS0 * C0**3)


def reactive_ratio(kr: float) -> float:
  """|Preac|/Prad from manuscript algebraic factor Im(1 - j/kr^3) branch."""
  return abs(1.0 / (kr**3))


def directivity_integral() -> float:
    # D = (3/2) sin^2 theta, int_4pi D dOmega = 4pi
    return 4 * math.pi


def main() -> None:
    f = 300e6
    omega = 2 * math.pi * f
    k = omega / C0
    p0 = 1.0
    P = prad(p0, omega)
    print("Prad_W", P)
    for kr in (0.5, 5.0):
        print("kr", kr, "Preac_ratio", reactive_ratio(kr))
    assert abs(reactive_ratio(0.5) - 8.0) < 1e-9
    assert abs(reactive_ratio(5.0) - 0.008) < 1e-12
    print("directivity_4pi", directivity_integral())
    a = 0.023
    fc = C0 / (2 * a)
    print("TE10_fc_GHz", fc / 1e9)


if __name__ == "__main__":
    main()
