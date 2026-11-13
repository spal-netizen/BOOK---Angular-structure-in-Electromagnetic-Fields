"""Numeric check: j [p h2'(p)]/[p h2(p)] vs j h2'/h2 differ for n=1 TM."""
from __future__ import annotations

import sys

try:
    from scipy.special import spherical_jn, spherical_yn
except ImportError:
    print("SKIP: scipy not available")
    sys.exit(0)

import numpy as np


def h2(n: int, p: complex) -> complex:
    return spherical_jn(n, p) + 1j * spherical_yn(n, p)


def Z_product(n: int, p: complex) -> complex:
    h = h2(n, p)
    # d/dp (p h) = h + p h'
    eps = 1e-8 * (1 + abs(p))
    hp = (p + eps) * h2(n, p + eps)
    hm = (p - eps) * h2(n, p - eps)
    d_ph = (hp - hm) / (2 * eps)
    return 1j * d_ph / (p * h)


def Z_wrong(n: int, p: complex) -> complex:
    eps = 1e-8 * (1 + abs(p))
    d_h = (h2(n, p + eps) - h2(n, p - eps)) / (2 * eps)
    return 1j * d_h / h2(n, p)


def main() -> int:
    for p in [0.3, 1.0, 3.0]:
        a, b = Z_product(1, p), Z_wrong(1, p)
        if abs(a - b) < 1e-6 * max(abs(a), 1):
            print(f"FAIL: product and wrong forms agree at p={p} — test degenerate")
            return 1
    print("OK: Chu product-derivative impedance differs from h'/h at n=1")
    return 0


if __name__ == "__main__":
    sys.exit(main())
