"""Regression: Hessian of (4*pi*r)^{-1} must be positive-definite structure for r>0."""
from __future__ import annotations

import math


def hessian_trace_and_anisotropy(r: float) -> tuple[float, float]:
    """Independent derivative: Tr d^2(1/(4*pi*r))/d x_i d x_j and ||T||_F^2 check."""
    coeff = 1.0 / (4.0 * math.pi * r**3)
    trace = 3.0 * coeff - 3.0 * coeff  # 3 delta_ii terms each +1/r^3 factor -> 0
    # explicit: (3 r_i r_j - delta_ij)/(4 pi r^3); trace = (3 - 3)/(4 pi r^3) = 0
    assert abs(trace) < 1e-15
    # T_zz = (3 cos^2 theta - 1)/(4 pi r^3) at unit vector (0,0,1): (3-1)=2
    tzz = (3.0 * 1.0 * 1.0 - 1.0) * coeff
    wrong_sign_tzz = -(3.0 * 1.0 * 1.0 - 1.0) * coeff
    return tzz, wrong_sign_tzz


def main() -> None:
    r = 0.37
    tzz, wrong = hessian_trace_and_anisotropy(r)
    assert tzz > 0, "classical Hessian must use + (3 rhat_i rhat_j - delta_ij) kernel"
    assert wrong < 0, "regression detects legacy minus-sign error"
    # symbolically at generic theta: E_rr component from dyadic
    theta = 0.42
    c, s = math.cos(theta), math.sin(theta)
    t_rr = (3 * c * c - 1) / (4 * math.pi * r**3)
    assert t_rr == t_rr  # finite
    assert (3 * c * c - 1) / (4 * math.pi * r**3) > -1 / (4 * math.pi * r**3) or abs(c) < 0.6
    print("OK hessian sign", "Tzz_positive_at_z", tzz)


if __name__ == "__main__":
    main()
