# Chapter 1 final figure audit

**PDF:** `CHAPTER1_CLASSICAL_FINAL.pdf` (62 pp)  
**Sources:** `vol-i-physical-figure-library.tex`, inline TikZ in `ch01.tex`, `ch01-foundation-seeds-passK-bridges.tex`

## Global style pass

- `voliphys` and `ch1axis` line weights increased; figure placement boxes enlarged (`ChOneFigBlock` / `ChOneFigGeo`).
- Applies to all **VolIPhys** macros used in Chapter 1.

## Mandatory correction

| Figure | Defect | Action | Status |
|--------|--------|--------|--------|
| **1.30** | $\theta=0$ / $\theta=\pi$ reversed relative to $+\hat{\mathbf{z}}$ | Labels corrected; equatorial plane marked $\theta=\pi/2$; caption relation to $U(\theta)\propto\sin^2\theta$ preserved | **Closed (scientific)** |

## Register summary (30 figures)

| Figure | Source | Print-size individual audit |
|--------|--------|----------------------------|
| 1.1–1.29 | TikZ / VolIPhys | Style pass; priority figures not individually re-inspected at print scale in this bounded pass |
| 1.30 | `VolIPhysDipoleRadiationPattern` | Corrected and re-rendered |

## Honest limitation

This pass did **not** complete a figure-by-figure print-resolution geometry/sign audit for all thirty diagrams with **PASS** on every row. Contact-sheet or global style tightening is **not** equivalent to the full register required for grade **A**.

## High-priority follow-up (if pursuing A)

Figures 1.1, 1.2, 1.4, 1.6, 1.9, 1.11–1.14, 1.20–1.27: verify normals, pressure arrows, gauge handedness, and modal-transport schematics against displayed equations at A4 print size.
