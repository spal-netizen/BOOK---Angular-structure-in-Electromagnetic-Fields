# R22 — Benchmark restore + Priority I (2026-11-17)

**Author direction:** Classical **electromagnetics textbook** chapter on the **A05B9CCE** baseline (~62 pp), not the expanded monograph review PDF.

## Actions taken

1. **Deleted** `VOLUME_I_RELEASE/CHAPTER1_AUTHOR_REVIEW_20261117.pdf`.
2. **Restored** `latex/ch01.tex` from `CHAPTER1_R13_0_SOURCE_VERIFIED_CANONICAL/build_package/ch01.tex` (benchmark tree). Monograph overlay archived at `latex/archive/ch01-monograph-overhaul-20261117.tex`.
3. **Priority I patches applied** on restored source:
   - 4.1 Abraham symmetric vs Minkowski nonsymmetric (`abraham1909`).
   - 4.2 `\Lambda_\ell` normalization; surface charge `\rho_s` (helicity `\sigma=\pm1` unchanged).
   - 4.3 Instantaneous shell balance + cycle-average Eqs. `angular-balance-instantaneous-shell`, `angular-balance-cycle-average`.
   - 4.4 Chu `z_n(p)`, `Z_n^{\mathrm{SI}}=\eta_0 z_n`.
   - 4.5 Electric-dipole restriction on radial hierarchy.
   - 4.6 Removed stale 1 GHz; unified 300 MHz shell narrative.
   - 4.7 `abraham1909` cites (bib year 1909).
   - 4.8 Problems 6(c), 7(b)–(c), 8 aligned with chapter scope.
   - 4.9 Summary: **Chapter 2**, not “following volume.”
4. **Build output** renamed: `build-ch01-review.ps1` → `CHAPTER1_TEXTBOOK_REVIEW_YYYYMMDD.pdf`.

## Remaining (Priority II–V, per audit)

Beth-led opening, vocabulary purge (bookkeeping/ledger), figure redraws 1.25/1.30, full uniqueness closure, prose reconstruction—**not** part of this restore commit.

## Build

From `latex/`:
`.\build-ch01-review.ps1`