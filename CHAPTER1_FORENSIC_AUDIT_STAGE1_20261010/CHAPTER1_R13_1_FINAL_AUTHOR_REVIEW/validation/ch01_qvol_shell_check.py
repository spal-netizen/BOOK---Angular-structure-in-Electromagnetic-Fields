"""Q_vol shell: P_rad uses outer sphere S_R only; net flux on dV_sh vanishes (R13.0)."""
from __future__ import annotations

import math

C0 = 299792458.0
EPS0 = 8.8541878128e-12
MU0 = 4e-7 * math.pi
ETA0 = math.sqrt(MU0 / EPS0)
K0 = 1.0 / ETA0


def dipole_radiation_resistance(omega: float, p0: float) -> float:
    """Far-zone radiated power (W) consistent with |E_theta|=eta0 k |p| sin(theta)/(4 pi r)."""
    k = omega / C0
    return ETA0 * (k * abs(p0)) ** 2 / (12 * math.pi)


def poynting_radial_flux_dipole(r: float, omega: float, p0: float, theta: float) -> float:
    """Cycle-averaged radial Poynting Re(S_c)·r_hat for z-directed Hertzian dipole (W/m^2)."""
    k = omega / C0
    sin_t = math.sin(theta)
    # Far-zone |E_theta| = eta0 k |p| sin(theta) / (4 pi r)  (SI, exp(+j omega t) outgoing).
    e_amp = ETA0 * k * abs(p0) * sin_t / (4 * math.pi * r)
    return 0.5 * (e_amp**2) / ETA0


def sphere_power_integrand(theta: float) -> float:
    return math.sin(theta)  # azimuth integral gives 2*pi*sin(theta)


def trapz_sphere_flux(r: float, omega: float, p0: float, n_theta: int = 400) -> float:
  """Numerical sphere integral of Re(S_c)·r_hat (no 1/r^2 Jacobian error)."""
  total = 0.0
  for i in range(n_theta):
    t0 = math.pi * i / n_theta
    t1 = math.pi * (i + 1) / n_theta
    tm = 0.5 * (t0 + t1)
    w = t1 - t0
    sr = poynting_radial_flux_dipole(r, omega, p0, tm)
    total += w * sr * sphere_power_integrand(tm)
  return 2 * math.pi * r**2 * total


def main() -> None:
    f = 300e6
    omega = 2 * math.pi * f
    p0 = 1.0e-3
    k = omega / C0
    r0 = 0.05 / k  # fixed exclusion inside reactive zone
    R = 5.0 / k  # radiative shell

    prad_analytic = dipole_radiation_resistance(omega, p0)
    p_outer = trapz_sphere_flux(R, omega, p0)
  # Outward normal on inner shell boundary S_{r0} points toward the excluded origin (-r_hat).
    p_inner = -trapz_sphere_flux(r0, omega, p0)

    print("Prad_analytic_W", prad_analytic)
    print("P_rad_outer_S_R_W", p_outer)
    print("P_rad_inner_outward_S_r0_W", p_inner)
    print("net_shell_boundary_W", p_outer + p_inner)

    rel_outer = abs(p_outer - prad_analytic) / prad_analytic
    assert rel_outer < 0.02, f"outer flux {rel_outer}"
    assert abs(p_outer + p_inner) / max(prad_analytic, 1e-30) < 0.05
    print("OK: use P_rad(R) on S_R only; do not use net flux on shell boundary.")


if __name__ == "__main__":
    main()
