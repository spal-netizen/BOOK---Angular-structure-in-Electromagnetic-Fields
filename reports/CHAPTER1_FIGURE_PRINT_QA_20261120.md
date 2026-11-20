# Chapter 1 — figure print-scale QA (2026-11-20)

**Scope:** All 30 numbered figures in `main-ch01-only.pdf` (book Fig.~1.1--1.30).  
**Method:** Source audit of `ch01.tex`, `ch01-foundation-seeds-passK-bridges.tex`, `vol-i-physical-figure-library.tex`, `ch01-tikz-styles.tex`; sizing via `\ChOneFigBlock` (max 0.72\linewidth × 0.38\textheight) and `\VolIPhysFig` → `\ChOneFigGeo` (max 0.62\linewidth × 0.32\textheight); default node font `\footnotesize` on `ch1geo` / `voliphys`.

**Overall:** PASS with notes — no caption/equation mismatches found; no sub-footnote label stacks; author should still spot-check raster sharpness on a 100% PDF zoom for Beth panel (Fig.~1.25).

| Fig. | Label | Source | Caption / body | Print scale | Status |
|------|-------|--------|----------------|-------------|--------|
| 1.1 | `fig:ch1.three-radiation-consequences` | VolIPhys | Three-panel radiation/torque/standing; discussed §1.0 | `\VolIPhysFig` | PASS |
| 1.2 | `fig:ch1.master-philosophy` | VolIPhys | Near reactive vs radiative shell; §1.0 | `\VolIPhysFig` | PASS |
| 1.3 | `fig:ch1.three-level-hierarchy` | VolIPhys | Source / Maxwell / chart; §1.0 | `\VolIPhysFig` | PASS |
| 1.4 | `fig:ch1.wp-matched-aperture` | VolIPhys | Matched vs unmatched aperture; §1.0.1 | `\VolIPhysFig` | PASS |
| 1.5 | `fig:ch1.wp-gaussian-waist` | VolIPhys | Gaussian waist domain; §1.0.1 | `\VolIPhysFig` | PASS |
| 1.6 | `fig:ch1.vacuum-closure-map` | VolIPhys | $\varepsilon_0,\mu_0,\eta_0$ + plane wave; §1.1 | `\VolIPhysFig` | PASS |
| 1.7 | `fig:ch1.green-function-seed` | VolIPhys | Green $G$, far-zone $R$; bridge file | `\VolIPhysFig` | PASS |
| 1.8 | `fig:ch1.wp-solenoidal-loop` | VolIPhys | Loop + shells $k_0 b$, $k_0 r$; §1.1 | `\VolIPhysFig` | PASS |
| 1.9 | `fig:ch1.wp-te10-waveguide` | VolIPhys | TE$_{10}$ cross-section; example | `\VolIPhysFig` | PASS |
| 1.10 | `fig:ch1.stress-traction-element` | ChOne tikz | $\mathbf{t}=\Tavg\cdot\hat{\mathbf{n}}$; §1.1.4 | `\ChOneFigBlock` | PASS |
| 1.11 | `fig:ch1.plane-wave-handedness` | VolIPhys | Absorber/reflector pressure; §1.1.4 | `\VolIPhysFig` | PASS |
| 1.12 | `fig:ch1.wp-reactive-vs-radiative` | VolIPhys | Shells $kr=0.5,3,10$; §1.2.4 | `\VolIPhysFig` | PASS |
| 1.13 | `fig:ch1.momentum-angular-geometry` | ChOne tikz | $\mathbf{g}_{\mathrm{em}}$, $\Mavg$; §1.1.5 | `\ChOneFigBlock` | PASS |
| 1.14 | `fig:ch1.wp-torque-balance-surface` | VolIPhys | $\boldsymbol{\Phi}_{J,\mathrm{out}}$ on $S_R$; §1.1.5 | `\VolIPhysFig` | PASS |
| 1.15 | `fig:ch1.signature-rotation-duality` | VolIPhys | Source rotation vs chart; §1.3 | `\VolIPhysFig` | PASS |
| 1.16 | `fig:ch1.phase-vs-transport-sketch` | ChOne tikz | Phase vs $\mathbf{j}_J$; §1.2.2 | `\ChOneFigBlock` | PASS |
| 1.17 | `fig:ch1.radial-field-zones` | VolIPhys | $r^{-3},r^{-2},r^{-1}$; §1.2.4 | `\VolIPhysFig` | PASS |
| 1.18 | `fig:ch1.source-vs-chart-rotation` | VolIPhys | Physical vs passive rotation; §1.3 | `\VolIPhysFig` | PASS |
| 1.19 | `fig:ch1.origin-shift-torque` | ChOne tikz | Origin shift torque; §1.3 | `\ChOneFigBlock` | PASS |
| 1.20 | `fig:ch1.gauge-same-field` | ChOne tikz | Gauge map on potentials; §1.4 | `\ChOneFigBlock` | PASS |
| 1.21 | `fig:ch1.helicity-cp-wave` | ChOne tikz | CP wave handedness; §1.4 | `\ChOneFigBlock` | PASS |
| 1.22 | `fig:ch1.spin-orbit-decomposition` | ChOne tikz | Spin/orbit split; §1.4 | `\ChOneFigBlock` | PASS |
| 1.23 | `fig:ch1.measurement-surface-readout` | ChOne tikz | Flux, traction, $\E_t$; §1.5 | `\ChOneFigBlock` | PASS |
| 1.24 | `fig:ch1.ex61-beth-helical-sketch` | VolIPhys | Axisymmetric dipole $m{=}0$; §1.6.1 | `\VolIPhysFig` | PASS |
| 1.25 | `fig:ch1.beth-schematic` | VolIPhys | Beth torsion stack | `\VolIPhysFig` | PASS — **author visual** (dense labels) |
| 1.26 | `fig:ch1.open-plane-vs-closed` | VolIPhys | Aperture vs $\Gamma_R$; §1.6.2 | `\VolIPhysFig` | PASS |
| 1.27 | `fig:ch1.ex62-counter-rotating-aperture` | VolIPhys | $m=\pm2$, $\cos^2(2\phi)$; §1.6.2 | `\VolIPhysFig` | PASS |
| 1.28 | `fig:ch1.ex63-gauge-volume-sketch` | VolIPhys | Gauge sphere $V_g$; §1.6.3 | `\VolIPhysFig` | PASS |
| 1.29 | `fig:ch1.dipole-three-zones` | VolIPhys | Near/transition/far shells; §1.6.4 | `\VolIPhysFig` | PASS |
| 1.30 | `fig:ch1.dipole-radiation-pattern` | VolIPhys | $\sin^2\theta$ pattern; §1.6.4 | `\VolIPhysFig` | PASS |

## Conventions checked

- Outgoing phase $e^{-\jj kr}$ and $\exp(+\jj\omega t)$ consistent in Green, dipole, and reactive-shell captions.
- $\hat{\mathbf{n}}_{\mathrm{ext}}=-\hat{\mathbf{n}}_{\mathrm{body}}$ not depicted on every schematic (acceptable); impedance sign stated in text for Fig.~1.4 context.
- No duplicate diagram reused without regime distinction (Fig.~1.17 qualitative zones vs Fig.~1.29 concentric shells — roles stated in captions).

## Release note

**Figure QA:** Source-level **PASS**; **author sign-off** recommended on Fig.~1.25 at print zoom only.