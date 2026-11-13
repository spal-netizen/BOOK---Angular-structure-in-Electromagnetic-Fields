# Figure standard

## Style

- Restrained **black-ink** scientific line art: controlled line weights (axis $\gtrsim1.0$\,pt, field arrows $\gtrsim0.9$\,pt), deliberate white space, legible labels at **A4 print size**.
- Figures must be **editable vector source** (TikZ in `vol-i-physical-figure-library.tex`, inline TikZ, or chapter-local PGF)—no flattened generated bitmaps as the sole source.
- A subtle hand-drafted appearance is acceptable; **geometric precision takes precedence** over decorative roughness.
- No decorative color unless required for physical distinction (polarization handedness).

## Required elements

- Outward normals on control surfaces where flux integrals are discussed
- Axis triads with stated handedness when 3D geometry matters
- Source support vs observation shell clearly separated
- Caption: physical setup + mathematical object tied to a labeled equation
- In-body paragraph interpreting the figure (not caption-only)

## Build and audit

1. Vector source in TeX (preferred) or resolution-independent PDF/ SVG.
2. Register `fig:chNN.*` ↔ printed “Figure N.m”.
3. For each figure: geometry, signs, caption accuracy, A4 legibility.
4. Mark **PASS** only after viewing the **rendered release PDF** page.
5. Repair only **demonstrable** defects—no wholesale redraw campaigns.

## Audit register columns

`Figure | Source page | Physical/math | Print | Defect | Action | Status`

Chapter 1 register: `CHAPTER1_R13_1_FINAL_AUTHOR_REVIEW/reports/R13_1_FINAL_FIGURE_AUDIT.md`.
