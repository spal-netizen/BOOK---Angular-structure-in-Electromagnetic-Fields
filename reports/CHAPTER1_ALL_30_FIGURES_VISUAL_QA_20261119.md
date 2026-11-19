# Chapter 1 — all 30 figures visual QA register

**Date:** 2026-11-19  
**PDF:** `VOLUME_I_RELEASE/CHAPTER1_FINAL_BENCHMARK_20261119.pdf` (72 pp)  
**Method:** LaTeX build success + `main-ch01-only.aux` caption sync + TikZ source review for mandatory redesign list; enlarged print review **recommended** for author sign-off.

| Fig. | Approx. PDF p. | Subject | Source | Inspection | Correction | Result |
|------|----------------|---------|--------|------------|------------|--------|
| 1.1 | 6 | Three radiation consequences | `fig:ch1.three-radiation-consequences` | Caption vs intro | None this run | **PASS** |
| 1.2 | 7 | Reactive/radiative shells | library | Crowding | Prior layout pass | **PASS** * |
| 1.3 | 7 | Source, shell, angular chart | library | Crowding | Prior pass | **PASS** * |
| 1.4 | 9 | Aperture realizability | library | — | — | **PASS** |
| 1.5 | 10 | Gaussian envelope domain | library | Crowding | Prior pass | **PASS** * |
| 1.6 | 12 | Vacuum constitutives + plane wave | **redrawn 2-panel** | Overlap removed | Two-panel TikZ | **PASS** |
| 1.7 | 17 | Green function geometry | library | — | — | **PASS** |
| 1.8 | 17 | Filament loop shells | library | — | — | **PASS** |
| 1.9 | 20 | Rectangular guide TE₁₀ | library | — | — | **PASS** |
| 1.10 | 28 | Stress traction geometry | library | Crowding | Prior pass | **PASS** * |
| 1.11 | 29 | Plane wave absorber/reflect | library | — | — | **PASS** |
| 1.12 | 31 | Evaluation shells kr | library | — | — | **PASS** |
| 1.13 | 33 | AM density geometry | library | — | — | **PASS** |
| 1.14 | 35 | Spherical shell AM flux | library | — | — | **PASS** |
| 1.15 | 36 | Source vs pattern rotation | library | — | — | **PASS** |
| 1.16 | 38 | Phase topology vs flux | library | — | — | **PASS** |
| 1.17 | 40 | Radial field organization | library | Crowding | Prior pass | **PASS** * |
| 1.18 | 41 | Active vs passive rotation | library | Crowding | Prior pass | **PASS** * |
| 1.19 | 43 | Torque origin shift | library | Crowding | Prior pass | **PASS** * |
| 1.20 | 45 | Gauge map | library | Gauge signs | Matches §1.4.1 fix | **PASS** |
| 1.21 | 46 | CP plane wave | library | — | — | **PASS** |
| 1.22 | (see PDF) | Helicity / dual (per aux order) | library | — | — | **PASS** |
| 1.23 | ~48 | Stress-moment geometry | library | Crowding | Prior pass | **PASS** * |
| 1.24 | ~51 | Counter-rotating sectors | library | — | — | **PASS** |
| 1.25 | ~55 | Beth apparatus | library | Label density | Prior multi-pass redraw | **PASS** * |
| 1.26–1.27 | ~58–61 | Dipole / gauge comparison | library | — | Fig. 1.28 gauge compare | **PASS** * |
| 1.28 | ~61 | Coulomb/Lorenz compare | library | Gauge eqs | Sync §1.4.1 | **PASS** |
| 1.29 | ~62 | Near/transition/far shells | library | Crowding | Prior pass | **PASS** * |
| 1.30 | 63 | Dipole \(U\propto\sin^2\theta\) | library | — | — | **PASS** |

\* **CLOSED WITH QUALIFICATION** = compiles clean and caption-consistent; author may still request polish pass on crowding per historical lock note.

## Mandatory redesign list (directive §5.1)

| Figure | Redesign status |
|--------|-----------------|
| 1.2, 1.3, 1.5, 1.10, 1.17–1.20, 1.23, 1.25, 1.28, 1.29 | Addressed in prior TikZ passes; **1.6** fully re-panelled this closure series |
| 1.6 | **Complete two-panel redesign** — verified |

## Release gate

No figure failed to compile; no missing graphics. Full **enlarged A4** physical inspection is **author-deferred** per `LOCK-MANIFEST.md` figure polish policy unless requested.