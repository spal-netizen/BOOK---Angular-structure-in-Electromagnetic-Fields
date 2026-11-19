# Chapter 1 — vector potential and gauge independent derivation

**Date:** 2026-11-19  
**Convention:** \(\exp(+j\omega t)\); outgoing \(e^{-jk_0 r}\); SI; \(\mathbf{B}=\mu\mathbf{H}\).

## Starting relations (manuscript)

\[
\mathbf E=-\nabla\phi-j\omega\mathbf A,\qquad
\mathbf B=\nabla\times\mathbf A=\mu\mathbf H.
\]

Homogeneous isotropic Maxwell:

\[
\nabla\times\mathbf H=\mathbf J_{\mathrm{imp}}+j\omega\varepsilon\mathbf E,\qquad
\nabla\cdot(\varepsilon\mathbf E)=\rho.
\]

## Ampère step → general wave equation

Insert \(\mathbf H=\mu^{-1}\nabla\times\mathbf A\) and \(\mathbf E=-\nabla\phi-j\omega\mathbf A\):

\[
\nabla\times(\nabla\times\mathbf A)=\mu\mathbf J_{\mathrm{imp}}+k^2\mathbf A-j\omega\mu\varepsilon\nabla\phi,
\quad k^2=\omega^2\mu\varepsilon.
\]

With \(\nabla\times(\nabla\times\mathbf A)=\nabla(\nabla\cdot\mathbf A)-\nabla^2\mathbf A\):

\[
(\nabla^2+k^2)\mathbf A=-\mu\mathbf J_{\mathrm{imp}}+\nabla\!\bigl(\nabla\cdot\mathbf A+j\omega\mu\varepsilon\phi\bigr).
\]

**Manuscript labels:** `eq:ch1.ampere-for-potentials`, `eq:ch1.A-general-gauge-wave`.

### Dimensional audit

| Term | Units |
|------|--------|
| \(\nabla^2\mathbf A\), \(k^2\mathbf A\) | \(\mathrm{T\,m^{-1}}\) (same as \(\mathbf A\)) |
| \(\mu\mathbf J_{\mathrm{imp}}\) | \(\mathrm{H\,m^{-1}}\cdot\mathrm{A\,m^{-2}}=\mathrm{T\,m^{-1}}\) |
| \(\nabla(\cdots)\) gauge bracket | \(\mathrm{T\,m^{-1}}\) |

No spurious \(j\omega\) on \(\mathbf J_{\mathrm{imp}}\) in the Helmholtz source.

## Lorenz gauge

\(\nabla\cdot\mathbf A+j\omega\mu\varepsilon\phi=0\) (`eq:ch1.lorenz-gauge-condition`) ⇒

\[
(\nabla^2+k^2)\mathbf A=-\mu\mathbf J_{\mathrm{imp}},\qquad
(\nabla^2+k^2)\phi=-\rho/\varepsilon.
\]

Consistent with retarded \(\mathbf A=\mu\int \mathbf J G\,\mathrm{d}^3r'\) in §1.1.1c when continuity holds.

## Coulomb gauge

\(\nabla\cdot\mathbf A=0\) does **not** remove the scalar coupling:

\[
(\nabla^2+k^2)\mathbf A=-\mu\mathbf J_{\mathrm{imp}}+j\omega\mu\varepsilon\nabla\phi_C,
\qquad
\nabla^2\phi_C=-\rho/\varepsilon.
\]

\(\rho=0\) does not force \(\phi_C=0\) without boundary data (`eq:ch1.A-coulomb-wave`, `eq:ch1.phi-coulomb-poisson`).

## Gauge transformation (\(\exp(+j\omega t)\))

\[
\mathbf A'=\mathbf A+\nabla\chi,\qquad
\phi'=\phi-j\omega\chi
\]

⇒ \(\mathbf E'=\mathbf E\), \(\mathbf B'=\mathbf B\) (`eq:ch1.gauge-transform`, `eq:ch1.gauge-E-invariant`, `eq:ch1.gauge-H-invariant`). Lorenz condition transforms with the same sign as \(\phi\).

## Sign audit vs prior defect

Prior manuscript error: **\(-j\omega\mu\mathbf J_{\mathrm{imp}}\)** on the vector Helmholtz source and incorrect Coulomb decoupling. **Corrected** to **\(-\mu\mathbf J_{\mathrm{imp}}\)** and coupled \(\nabla\phi_C\) term above.

## Regression

Active `ch01.tex`: no \(-j\omega\mu\mathbf J_{\mathrm{imp}}\) in Lorenz vector equation. Figures 1.20, 1.28 reference gauge map consistent with corrected text.

**Status:** **CLOSED** in source and `CHAPTER1_FINAL_BENCHMARK_20261119.pdf` (§1.4.1, pp. 43–45).