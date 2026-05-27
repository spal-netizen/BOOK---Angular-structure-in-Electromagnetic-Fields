# Notation and Conventions — Volume I

**Status:** LOCKED — 2026-05-24 (see `LOCK-MANIFEST.md`)  
**Changes:** require entry in `LOCK-MANIFEST.md` unlock policy before editing.

## Time dependence

Harmonic fields use the **engineering time convention**:

\[
\mathbf{f}(\mathbf{r},t) = \mathrm{Re}\{\underline{\mathbf{f}}(\mathbf{r})\, e^{-j\omega t}\}, \qquad \omega>0 .
\]

Therefore \(\partial/\partial t \to -j\omega\) and \(\partial^2/\partial t^2 \to -\omega^2\) for phasors.

## Units

**SI units** throughout: metre (m), second (s), kilogram (kg), ampere (A), volt (V), weber (Wb).

| Quantity | Symbol | SI unit |
|----------|--------|---------|
| Permittivity of free space | \(\varepsilon_0\) | F/m |
| Permeability of free space | \(\mu_0\) | H/m |
| Speed of light | \(c = 1/\sqrt{\varepsilon_0\mu_0}\) | m/s |
| Intrinsic impedance | \(\eta_0 = \sqrt{\mu_0/\varepsilon_0}\) | \(\Omega\) |
| Wavenumber | \(k = \omega/c\) | rad/m |

Material relations (linear, local, isotropic unless stated):

\[
\underline{\mathbf{D}} = \varepsilon \underline{\mathbf{E}}, \qquad
\underline{\mathbf{B}} = \mu \underline{\mathbf{H}}, \qquad
\underline{\mathbf{J}} = \sigma \underline{\mathbf{E}} + \underline{\mathbf{J}}_{\mathrm{imp}} .
\]

## Maxwell equations (frequency domain, vacuum regions)

\[
\nabla\times\underline{\mathbf{E}} = -j\omega\mu_0\underline{\mathbf{H}}, \qquad
\nabla\times\underline{\mathbf{H}} = j\omega\varepsilon_0\underline{\mathbf{E}} + \underline{\mathbf{J}}_{\mathrm{imp}},
\]
\[
\nabla\cdot(\varepsilon_0\underline{\mathbf{E}}) = \rho, \qquad
\nabla\cdot(\mu_0\underline{\mathbf{H}}) = 0 .
\]

## Field and source symbols

| Symbol | Meaning |
|--------|---------|
| \(\underline{\mathbf{E}}, \underline{\mathbf{H}}\) | Phasor electric and magnetic fields |
| \(\underline{\mathbf{J}}_{\mathrm{imp}}\) | Impressed electric current density |
| \(\rho\) | Charge density |
| \(\underline{\mathbf{A}}, \phi\) | Vector and scalar potentials (Lorenz gauge unless noted) |

Underlined symbols denote phasors; time-domain vectors are **not** underlined.

## Angular momentum and spherical coordinates

- Spherical coordinates \((r,\theta,\phi)\) with **unit vectors** \(\hat{\mathbf{r}}, \hat{\boldsymbol{\theta}}, \hat{\boldsymbol{\phi}}\).
- Scalar spherical harmonics \(Y_{\ell}^{m}(\theta,\phi)\) with **Condon–Shortley phase**.
- Vector spherical harmonics \(\mathbf{M}_{\ell m}, \mathbf{N}_{\ell m}\) (exact definitions in §3.4.1 only — do not redefine elsewhere).
- Total angular momentum operators \(\mathbf{J} = \mathbf{L}+\mathbf{S}\) on fields: defined once in §3.2.1.

## Operators

| Symbol | Meaning |
|--------|---------|
| \(\mathcal{R}\) | Radiation operator (maps source → radiative field; precise domain in §2.0) |
| \(\mathcal{G}\) | Dyadic Green function operator |
| \(\dagger\) | Adjoint (with appropriate inner product) |

## Inner products

Finite-energy fields on domain \(\Omega\):

\[
\langle \underline{\mathbf{E}}_1, \underline{\mathbf{E}}_2 \rangle_\Omega
= \int_\Omega \underline{\mathbf{E}}_1^* \cdot \underline{\mathbf{E}}_2 \,\mathrm{d}V .
\]

Radiation and coupling inner products are specialized in Chapters 2–3 (defined once per chapter opening).

## References and labels

- LaTeX labels: `\label{sec:chMM.SSS}` for section `MM.SSS` (e.g. `sec:ch03.4.2`).
- Theorems: `thm:chMM.name`, equations: `eq:chMM.name`.
- Figures: `fig:chMM.name` (e.g. `fig:ch01.rotation-schema`) with chapter-local numbering in rendered output.
- Equation numbering policy: chapter-wise `(m.n)` style (e.g. `(1.1)`, `(3.27)`).
- Reference-numbering policy: chapter-wise `[m.n]` style (e.g. `[1.1]`, `[4.12]`) for final production formatting.
- Citation source policy: prioritize pioneering/original literature and latest proven developments; place citations exactly where support is needed.
- Bib keys in source remain `AuthorYear` in `latex/references.bib`; rendered chapter-wise labels are a formatting-layer requirement.

## Figure readability policy

- Use only compact conceptual/theorem-centric schematics when a governing equation, theorem step, or interpretation transition benefits from geometric readability.
- Every included figure must have a precise caption, explicit labels inside the graphic, and a body-text explanation linking labels to equation symbols and physical meaning.
- Decorative figures are disallowed.

## Forbidden without cross-reference

- Re-stating full Maxwell equations in Chapters 2–4 (use “Eq. (1.x)” / `\ref`).
- Alternate time sign or Gaussian units.
- Redefining \(Y_{\ell}^{m}\), \(\mathbf{M}_{\ell m}\), \(\mathbf{N}_{\ell m}\) outside §3.4.
