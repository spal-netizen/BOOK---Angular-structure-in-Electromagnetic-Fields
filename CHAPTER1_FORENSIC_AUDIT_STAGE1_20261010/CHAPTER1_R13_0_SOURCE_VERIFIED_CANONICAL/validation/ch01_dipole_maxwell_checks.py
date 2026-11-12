"""Distributional dipole consistency checks (R13) — SI, exp(+jωt)."""
from __future__ import annotations

import cmath
import math

EPS0 = 8.8541878128e-12
MU0 = 4e-7 * math.pi
C0 = 299792458.0


def hertzian_fields(k: float, r: float, theta: float, p0: float = 1.0) -> tuple[complex, complex, complex]:
    """Eqs. ch1.dipole-Er, Etheta, Hphi (phasor amplitudes)."""
    kr = k * r
    phase = cmath.exp(-1j * kr)
    pref = p0 / (4 * math.pi * EPS0)
    er = pref * math.cos(theta) * phase * (2 / r**3 + 2j * k / r**2)
    et = pref * math.sin(theta) * phase * (1 / r**3 + 1j * k / r**2 - k**2 / r)
    eta0 = math.sqrt(MU0 / EPS0)
    hphi = (
        1j
        * k
        * p0
        * math.sin(theta)
        / (4 * math.pi * EPS0 * eta0)
        * phase
        * (1 / r**2 + 1j * k / r)
    )
    return er, et, hphi


def far_zone_impedance_ratio(k: float, r: float, theta: float = math.pi / 3) -> float:
    """Far-zone check: |E_theta|/(eta0|H_phi|) -> 1 as kr -> inf."""
    _, et, hphi = hertzian_fields(k, r, theta)
    eta0 = math.sqrt(MU0 / EPS0)
    return abs(et) / (eta0 * abs(hphi))


def prad(p0: float, omega: float) -> float:
    return (omega**4 * p0**2) / (12 * math.pi * EPS0 * C0**3)


def main() -> None:
    f = 300e6
    omega = 2 * math.pi * f
    k = omega / C0
    p0 = 1.0
    ratio = far_zone_impedance_ratio(k, 50.0)
    print("kr", k * 50.0, "Etheta_over_eta0Hphi", ratio)
    # Manuscript spherical components (Eqs. dipole-Etheta/Hphi) satisfy |E_theta|≈η_0|H_φ| at kr≫1;
    # this script uses the same algebraic template—flag if ratio departs strongly from unity.
    assert abs(ratio - 1.0) < 0.02
    print("Prad", prad(p0, omega))
    print("OK")


if __name__ == "__main__":
    main()

