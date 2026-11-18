# R16 — Batches F, E, A7+H, build, §1.3 GCHECK

**Date:** 2026-11-16  
**§1.2.4:** User approved (locked).

---

## Batch F (remainder) — Figs 1.27, 1.28, 1.30

| Audit Fig. | Label | Action |
|------------|-------|--------|
| 1.27 | `fig:ch1.ex62-counter-rotating-aperture` | Inserted in §1.6.2; `VolIPhysCounterRotatingAperture` with $m=\pm2$ labels; in-body interpretation |
| 1.28 | `fig:ch1.ex63-gauge-volume-sketch` | Inserted in §1.6.3; Coulomb/Lorenz TikZ; in-body interpretation |
| 1.30 | `fig:ch1.dipole-radiation-pattern` | Inserted in §1.6.4; $\theta$ pole labels corrected; $\theta=\pi/2$ equator marked |

**Figure library:** `VolIPhysDipoleRadiationPattern` — $\theta=0$ at $+\hat{\mathbf{z}}$, $\theta=\pi$ at $-\hat{\mathbf{z}}$.

---

## Batch E — §1.7 synthesis

- Removed formal **defer-topic** and **continuity-map** equation displays from student-facing prose.
- Retained compact `eq:ch1.continuity-admissibility`, `eq:ch1.report-class-lock`, `eq:ch1.compatibility-criteria` for Ch.2–4 cross-refs.
- `phantomsection` anchors preserved for `eq:ch1.defer-*` / `eq:ch1.continuity-map` (no re-display).

---

## A7 + H — frequency & bibliography

- **300 MHz** anchor: $\lambda_0=1\,\mathrm{m}$, $k_0=2\pi\,\mathrm{rad\,m^{-1}}$ on §1.2.3–§1.2.4 tables, §1.6.3–§1.6.4 two-shell protocol, gauge volume example.
- Fixed §1.6.4 shell text: inner $kr_1=0.1\pi$, outer $kr_2=10\pi$ (removed mixed $kr_1=0.5$ in primary protocol paragraph).
- **Abraham:** `abraham1909` primary cite in Ch.1; `abraham1910` bib duplicate retained for legacy keys (year 1909).
- **Harrington 2001:** reissue note (1961 McGraw–Hill).

---

## §1.3 GCHECK

- Restored `\section{Rotational covariance and reference frames}` with `\label{sec:ch01.3}`.
- `\subsection{...}` for §1.3.1 (was mislabeled `sec:ch01.3.2`).
- New `fig:ch1.active-passive-rotation` + in-body contrast of source vs chart rotation.

---

## Build

- Command: `latexmk -pdf main.tex` from `latex/` (full Vol I; Ch.1 included).
- Post-build: check log for undefined refs to removed defer equations and duplicate labels.

---

## Author gate

- **§1.3** ready for approval after PDF spot-check (covariance figure + section header).
- Optional follow-up: harmonize remaining $kr_1=0.5$/ $kr_2=5$ **illustrative** sentences in §1.6.4 Chu paragraph with 300 MHz two-shell narrative.