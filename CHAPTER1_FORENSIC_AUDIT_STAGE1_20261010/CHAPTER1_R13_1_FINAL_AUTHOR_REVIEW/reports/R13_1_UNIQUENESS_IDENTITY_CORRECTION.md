# Uniqueness — lossless/lossy identity correction

## Defect

Eq. `uniqueness-local-div` was introduced immediately after mentioning complex \(\varepsilon\), using \(u_{\Delta E}=\tfrac14\varepsilon|\Delta\E|^2\) — valid only for **real** \(\varepsilon,\mu\).

## Fix

1. **Lossless block** (`\emph{Lossless case (real $\varepsilon$, $\mu$)}`) derives `uniqueness-local-div` with explicit disclaimer.
2. **Lossy block** derives `uniqueness-local-div-complex` with \(\varepsilon^*\) and passive \(\epsilon''\ge0\) reduction.

Exterior passive-impedance argument unchanged in scope.

**Test:** `ch01_uniqueness_identity_check.py` — **PASS**.
