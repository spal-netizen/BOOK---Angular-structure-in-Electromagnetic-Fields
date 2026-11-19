# Chapter 1 — final release audit

**Date:** 2026-11-19  
**Artifact:** `VOLUME_I_RELEASE/CHAPTER1_FINAL_BENCHMARK_20261119.pdf`

## Build verification

| Check | Result |
|-------|--------|
| `latex/build-ch01-review.ps1` | Exit **0** |
| Pages | **72** |
| Figures (numbered captions) | **30** |
| Equation labels (`eq:ch1.*`) | **205** (includes problems) |
| Bibliography | **27** items |
| Undefined refs/citations (ch01 job) | **None** in final log |

## Critical equations verified in PDF/source

| Item | Location | Verified |
|------|----------|----------|
| Vector Helmholtz \(-\mu\mathbf J_{\mathrm{imp}}\) | §1.4.1 | Yes |
| Lorenz / Coulomb split | Eqs. A-lorenz-wave, A-coulomb-wave | Yes |
| Chu \(z_1(0.5)\approx 0.20-j1.60\) | §1.6.4 | Yes |
| Open disk \(\int_{S_{\mathrm{disk}}}\) | Eq. (1.131) area | Yes |
| Shell cross-ref §1.6.4 | After dipole example | Yes |
| Theorem 1.5 PEC/PMC | Proof step (iii) boundary | Yes |

## Theorem status

**CLOSED WITH QUALIFICATION** — see `CHAPTER1_THEOREM_1_5_FINAL_PROOF_AUDIT_20261119.md`.

## Numerical verification

Chu impedance: independent Python (this run and memo) agrees with manuscript to stated precision.

## Visual QA

See `CHAPTER1_ALL_30_FIGURES_VISUAL_QA_20261119.md`. All **PASS** or **PASS*** (author polish optional).

## Unresolved warnings

- Minor LaTeX overfull boxes may remain (nonstop build); no blocked references.
- Full weak Maxwell uniqueness theory not in chapter by design.

## Release decision

**RELEASE READY WITH EXPLICIT QUALIFICATIONS**

Qualifications: (1) VSW measure completeness and vector Rellich cited not proved in chapter; (2) figure crowding polish author-deferred; (3) Colton BVP not claimed equivalent line-by-line.

## Git

Master-closure commit pushed on branch `volume-i/ch2-4-coordinated-transformation` (see completion status report).