# Chapter 1 — final master-closure baseline

**Date:** 2026-11-19  
**Run:** Final scientific, mathematical and editorial master-closure  

## Active project root

`C:\Users\S.Pal\Downloads\BOOK---Angular-structure-in-Electromagnetic-Fields`

## LaTeX entry and build

| Item | Value |
|------|--------|
| Entry point | `latex/main-ch01-only.tex` |
| Chapter body | `latex/ch01.tex` |
| Problems | `latex/ch01-problems.tex`, `latex/ch01-problems-solutions.tex` |
| Green bridge | `latex/ch01-green-function-bridge.tex` |
| Figure library | `latex/vol-i-physical-figure-library.tex` |
| Styles | `latex/ch01-tikz-styles.tex` |
| Bibliography | `latex/references.bib` |
| Build command | `latex/build-ch01-review.ps1` (latexmk ×2 + copy to `VOLUME_I_RELEASE/`) |

## Release artifact (pre/post run)

| Metric | Value |
|--------|--------|
| Canonical PDF | `VOLUME_I_RELEASE/CHAPTER1_FINAL_BENCHMARK_20261119.pdf` |
| Page count | **72** |
| Numbered figures | **30** (`main-ch01-only.aux` lists Fig. 1.1–1.30) |
| `fig:ch1.*` labels in `ch01.tex` | **29** (Fig. 1.30 is included via figure library / `\input`) |
| Chapter equation labels (`eq:ch1.*` in aux) | **205** numbered displays (includes §1.8–1.9) |
| Bibliography items in build | **27** (`main-ch01-only.bbl`) |
| Build status | **latexmk exit 0**, no undefined references on ch01-only job |

## Figure count reconciliation

Earlier reports cited 29 labels in `ch01.tex`; the rendered PDF correctly lists **30** captions (Fig. 1.30 = dipole far-zone pattern, p. 63). No duplicate numbering.

## Controlling defect register (forensic audit 2026-11-19)

| ID | Topic |
|----|--------|
| S01 | Vector potentials §1.4.1, Eqs. (1.104)–(1.113) area |
| S02 | Chu modal impedance Eq. (1.175) numerics |
| S03–S05 | Theorem 1.5 proof (PEC/PMC, regularity, VSW, Rellich) |
| F01–F14 | Figure composition (mandatory list §5.1) |
| E01 | Open disk integral symbol Eq. (1.131) |
| E02 | Cross-ref after Eq. (1.165) → §1.6.4 |
| P01 | Defensive / audit-facing prose |
| B01 | Bibliography [6] and concordance |
| Q01 | Problems and solutions consistency |

## Files modified this master-closure run

- `latex/ch01.tex` — §1.4.1 potentials/gauges; Chu numerics; Theorem 1.5; disk integral; cross-refs; Beth paragraph title
- `latex/vol-i-physical-figure-library.tex` — Fig. 1.6 two-panel redraw (prior pass retained)
- `latex/references.bib`, `latex/ch01-problems*.tex`, `latex/ch01-green-function-bridge.tex` — prior corrections retained
- `reports/CHAPTER1_*_20261119.md` — deliverable set

## Preserved evidence

Prior PDFs under `VOLUME_I_RELEASE/` and historical reports under `reports/` and `CHAPTER1_FORENSIC_AUDIT_*` are **not** overwritten by this baseline file.

## Known unresolved at baseline handoff (honest)

- Full author-scale print inspection of all 30 TikZ figures at A4 enlargement (automated build + caption audit only in this run).
- Complete in-chapter reproduction of vector spherical-wave orthogonality measure theory (cited to Stratton).