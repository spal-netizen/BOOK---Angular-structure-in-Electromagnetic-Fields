# Notation and Conventions — Volume I

**Status:** LOCKED — 2026-05-24 (see `LOCK-MANIFEST.md`)  
**Chapter 1 audit:** COMPLETE AND LOCKED — 2026-05-29 (final no-recursion pass, seminal citations only in body)  
**Chapter 1 figures:** COMPLETE AND LOCKED — 2026-05-29 (**all 68 figures TikZ** via `ch01-tikz-styles.tex`; caption + in-body interpretation mandatory; **visual layout polish AUTHOR-DEFERRED**)  
**Chapter 2 audit:** COMPLETE AND LOCKED — 2026-05-31 (45/45 subsections; operator ledger; DOF diagnostic suite; see `TOC/CH02-MANUSCRIPT-SIGNOFF-LOCK.md`)  
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
\nabla\times\mathbf{E} = -j\omega\mu_0\mathbf{H}, \qquad
\nabla\times\mathbf{H} = j\omega\varepsilon_0\mathbf{E} + \mathbf{J}_{\mathrm{imp}},
\]
\[
\nabla\cdot(\varepsilon_0\mathbf{E}) = \rho, \qquad
\nabla\cdot(\mu_0\mathbf{H}) = 0 .
\]

Phasor fields \(\mathbf{E},\mathbf{H}\) are written in **bold** without underlines, consistent with Jackson, Harrington, and Stratton. Time dependence \(\exp(-j\omega t)\) is fixed once per section and not repeated on every symbol.

## Field and source symbols

| Symbol | Meaning |
|--------|---------|
| \(\mathbf{E}, \mathbf{H}\) | Phasor electric and magnetic fields (bold spatial vectors; harmonic \(\exp(-j\omega t)\) stated in prose) |
| \(\mathbf{J}_{\mathrm{imp}}\) | Impressed electric current density (phasor) |
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

### Chapter 2 operator symbols (locked with Table 2.1 in §2.0.3)

| Symbol | Domain → range | Effective definition / note |
|--------|----------------|----------------------------|
| \(\mathcal{S}_\omega\) | \(\mathcal{J}_\Omega\to\mathcal{F}_\Omega\) | Maxwell source-to-field closure; not transport-default |
| \(\Pi_{\mathrm{prop}},\Pi_{\mathrm{ev}},\Pi_{\mathrm{non}}\) | \(\mathcal{F}_\Omega\to\mathcal{F}_\Omega\) | Spectral split; formal until Ch. 3 §3.1.3 |
| \(\Pi_{\mathrm{rad}}\) | \(\mathcal{F}_\Omega\to\mathcal{F}_{\mathrm{rad}}\) | **From §2.2.4 onward:** \(\Pi_{\mathrm{rad}}=\mathcal{O}_{\mathrm{out}}\circ\Pi_{\mathrm{prop}}\) |
| \(\mathcal{R}_\omega\) | \(\mathcal{J}_\Omega\to\mathcal{F}_{\mathrm{rad}}\) | Radiation map; \(\ker\mathcal{R}_\omega\) infinite |
| \(\Lambda_{\mathrm{nf}}\) | \(\mathcal{J}_\Omega\to a(\widehat{\mathbf{k}})\) | Near-to-far angular amplitude |
| \(\Lambda_{\mathrm{rad}},\mathcal{M}_\omega\) | \(\mathcal{J}_\Omega\to\) observables | Far readout; finite rank when aperture-limited |
| \(a,a_{\mathrm{ret}},a_{\mathrm{sup}},a_{\mathrm{acc}},a_{\mathrm{obs}}\) | on \(S^{2}\) | Stages of angular content (retained, suppressed, accessible, observed) |
| \(\mathcal{D}_{J,\mathrm{reg}},\mathcal{D}_{\mathrm{ch2}}\) | flags | Regime and chapter inheritance gates |

Do not overload these symbols in Chapters 3–4; harmonic relabeling in Ch. 3 must preserve composition order.

### Chapter 2 radiation integral prefactor (locked 2026-05-29)

With \(\mathcal{W}_{E,\omega}\E=-\jj\omega\mu_0\Jimp+\cdots\) and dyadic
\(\mathcal{W}_{E,\omega}\overline{\mathbf{G}}_{E}=\overline{\mathbf{I}}\delta\), the impressed-current
electric field is
\[
\E(\mathbf{r})=-\jj\omega\mu_0\int\overline{\mathbf{G}}_{E}(\mathbf{r},\mathbf{r}')\cdot\Jimp(\mathbf{r}')\,d^{3}r'+\E_{\mathrm{hom}}(\mathbf{r}).
\]
All Chapter 2 dyadic/volume/Huygens/MoM electric routes use this sign consistently with
`eq:ch2.radiation-integral-preview` and `eq:ch2.helmholtz-forcing-map`.

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
- **Worked-problem figure labels (Ch. 1):** `fig:ch1.wp-<slug>` immediately after each `\paragraph{Worked problem:...}`; must include labeled geometry/variables, caption, and one in-body `Figure~\ref{...}` interpretation sentence.
- Equation numbering policy: chapter-wise `(m.n)` style (e.g. `(1.1)`, `(3.27)`).
- Reference-numbering policy: chapter-wise `[m.n]` style (e.g. `[1.1]`, `[4.12]`) for final production formatting.
- Citation source policy: prioritize pioneering/original literature and latest proven developments; place citations exactly where support is needed.
- Citation-order lock: for laws, theorems, proven concepts, and nontrivial technical reasoning, cite originator/seminal sources first, then classical authoritative monographs, then validated modern contributions.
- **Chapter 1 body lock (2026-05-29):** manuscript prose uses seminal/pioneer keys only (`maxwell1873`, `poynting1884`, `stratton1941`, `belinfante1940`, `beth1936`, `allen1992`, `chu1948`, `abraham1910`, `minkowski1908`); architecture jargon (`gate`, `contract`, `filter`, `ownership`) is banned in running text.
- Bib keys in source remain `AuthorYear` in `latex/references.bib`; rendered chapter-wise labels are a formatting-layer requirement.

## Figure readability policy

- Use only compact conceptual/theorem-centric schematics when a governing equation, theorem step, or interpretation transition benefits from geometric readability.
- Every included figure must have a precise caption, explicit labels inside the graphic, and a body-text explanation linking labels to equation symbols and physical meaning.
- Decorative figures are disallowed.
- **TikZ policy (Volume I):** enabled in `latex/preamble.tex`; **`latex/ch01-tikz-styles.tex`** defines shared styles (`ch1fig`, `ch1box`, `ch1lblout`, …); **all 68 Chapter~1 figures are TikZ** (concept maps, `fig:ch1.wp-*`, `fig:ch1.ex6*`); labels use `ch1lblout` / external positioning to prevent overlap with geometry.
- Figure numbering follows chapter-wise monotone order in rendered output (e.g., Fig. 1.1, 1.2, ... within Chapter 1).

## Equation pedagogy baseline (locked)

- Every symbol, operator, parameter, and domain qualifier in each major equation must be defined at first use in nearby prose.
- Major equation discussion must include term-level mathematical role, full-equation function, and physical interpretation.
- Intermediate expressions and assumption/domain clarifications should be included whenever needed for reader clarity.
- Subsection-heading-component clarity lock: each technical component appearing in a subsection title must be explicitly defined and explained in rigorous but student-friendly scholarly prose within that subsection.

## Forbidden without cross-reference

- Re-stating full Maxwell equations in Chapters 2–4 (use “Eq. (1.x)” / `\ref`).
- Alternate time sign or Gaussian units.
- Redefining \(Y_{\ell}^{m}\), \(\mathbf{M}_{\ell m}\), \(\mathbf{N}_{\ell m}\) outside §3.4.
