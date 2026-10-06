# Chapter 2 — Content Inventory (Stage 1)

Systematic record per major section. **No rewriting; classification only.**

Legend: **Ch.1 dep** = uses `\ref{ch:01}` / §1.x; **Ch.3/4 fwd** = explicit deferral or natural home elsewhere.

---

## §2.0 Introduction (+ §2.0.1–2.0.3)

| Field | Record |
|-------|--------|
| **Purpose** | Frame radiation as accessibility; operator chain \(\mathcal{S}_\omega \to \Pi_{\mathrm{rad}} \to \mathcal{R}_\omega\); measurement rank. |
| **Physical question** | What Maxwell-generated content survives outgoing selection and reaches far-zone observables? |
| **Principal equations** | Radiation map composition; radiated power via Poynting on \(\Gamma_R\) (inherits Ch.1). |
| **Definitions** | \(\mathcal{S}_\omega\), \(\Pi_{\mathrm{rad}}\), \(\mathcal{R}_\omega\), \(\mathcal{E}_{\mathrm{acc}}^{(N)}\). |
| **Assumptions** | Finite support sources; Sommerfeld-outgoing qualification; harmonic steady state. |
| **Figures** | `fig:ch2.master-spine`, `source-radiation-sequence`, `reactive-radiative-split`, Maxwell stack, curl coupling. |
| **Ch.1 dep** | Admissibility, \(\Jimp\), Poynting, gauge limits — **USE by ref**. |
| **Ch.3/4 fwd** | Angular momentum / VSH not developed here. |
| **Duplication** | Intro + §2.0.1 repeat compact-range narrative and operator chain (REPETITION audit). |

### §2.0.2 Maxwell equations in operator form (`sec:ch202`)

Operator packaging of Maxwell; boundary stack; first-order curl structure.

### §2.0.3 Admissibility and Maxwell export sequence

Export sequence after Ch.1 admissibility; charge consistency before inversion.

---

## §2.1 Function Spaces and Maxwell Operators

| Field | Record |
|-------|--------|
| **Purpose** | Domains for sources/fields; operator adjoints; compactness/Fredholm language for later radiation operators. |
| **Physical question** | On which spaces is Maxwell inversion and radiation observation well posed? |
| **Structures** | \(L^2\), \(H(\mathrm{curl})\), traces, duals, bounded/compact operators, self-adjoint extensions. |
| **Operators** | \(\mathcal{M}_\omega\), \(\mathcal{L}_\omega\) (Maxwell blocks); solution–radiation composition figure. |
| **Figures** | Sobolev ladder, trace chain, compact embedding, rank-deficient observation, cavity quotient, self-adjoint pathway. |
| **Ch.1 dep** | Source class \(\mathcal{J}_\Omega\), boundary traces from Ch.1. |
| **Formalism note** | Heavy functional analysis — audit §13.5 (necessity vs overhead). |

Subsections: 2.1.1 spaces; 2.1.2 domain/range/adjoint; 2.1.3 compactness/rank; 2.1.4 self-adjointness/admissibility.

---

## §2.2 Time- and Frequency-Domain Maxwell Operators

| Field | Record |
|-------|--------|
| **Purpose** | TD evolution, FD Maxwell operators, causality ↔ phasor equivalence. |
| **Principal content** | \(\partial_t\) maps; \(-j\omega\) (or volume-stated) reduction; Laplace/resolvent linkage; propagating/evanescent split in spectral domain. |
| **Assumptions** | Causal retarded branch; material \(\varepsilon,\mu\) (homogeneous baseline). |
| **Figures** | Time-evolution chain, light cone, frequency ladder, Helmholtz vs first-order, Laplace link, spectral radiation criterion. |
| **Defect candidates** | TIME-CONVENTION vs frozen Ch.1 MICROR1 (+j) vs `latex/ch01.tex` (-j) — CH2-D002. |
| **Ch.1 dep** | Maxwell differential form cited, not re-derived. |

Subsections: 2.2.1 TD evolution; 2.2.2 FD operators; 2.2.3 causality/time–frequency equivalence.

---

## §2.3 Green Functions and Electromagnetic Inversion

| Field | Record |
|-------|--------|
| **Purpose** | Scalar/vector/dyadic Greens; dipole signature; singularities; retardation; inversion/solvability. |
| **Physical question** | Given \(\Jimp\), what is the Maxwell field (Green representation)? |
| **Principal equations** | Dyadic convolution; \(e^{-jk_0 R}/(4\pi R)\)-type kernels; retarded time support. |
| **Figures** | Dyadic convolution, Hertzian dipole, regularization split, retarded cone, multi-region assembly. |
| **Audit targets** | Sign, outgoing phase, normalization (§13.3). |
| **Ch.3/4 fwd** | Full angular harmonic expansions deferred. |

---

## §2.4 Radiation Conditions and Uniqueness

| Field | Record |
|-------|--------|
| **Purpose** | Sommerfeld condition; outgoing-wave selection; uniqueness; reconstruction implications. |
| **Operators** | \(\Pi_{\mathrm{rad}}\) as outgoing selector — idempotency claims (CH2-D006). |
| **Figures** | Sommerfeld far zone, outgoing selector chain, exterior uniqueness flux, reconstruction forward/null. |
| **Ch.1 dep** | Outgoing support language from Ch.1 radiation section (by reference). |

---

## §2.5 Radiation Integrals and Source-to-Field Representations

| Field | Record |
|-------|--------|
| **Purpose** | Integral representations; near/intermediate/far; flux (energy, momentum, angular momentum); rad/NR split. |
| **Physical question** | What part of the field is radiative vs reactive in operator terms? |
| **Figures** | Integral routes, distance regimes, flux meter, rad/NR split. |
| **Boundary** | Angular-momentum flux subsection — **SHARED** with Ch.1/Ch.3 themes (AUTHOR DECISION). |

---

## §2.6 Spectral Theory of Radiation Operators

| Field | Record |
|-------|--------|
| **Purpose** | SV decay (aperture); eigenfunctions; rotational spectral degeneracy; Fredholm; geometric spectrum constraints. |
| **Structures** | Compact operators, spectral decomposition, pattern solvability. |
| **Figures** | Aperture SVD signature, spectral decomposition, rotation covariance, Fredholm chain, geometric constraints. |
| **Ch.3 fwd** | Rotational symmetry / harmonic bases — partial overlap with Ch.3 HOME. |

---

## §2.7 Non-Radiating Sources and Null Spaces

| Field | Record |
|-------|--------|
| **Purpose** | \(\ker \mathcal{R}_\omega\); NR current configs; evanescent non-reconstructability; angular-spectrum null consequences. |
| **Audit** | Distinguish NR vs evanescent vs finite-aperture nulls (§13.6). |
| **Figures** | Nullspace measurement chain, NR configurations, evanescent non-reconstruct, angular-spectrum null. |

---

## §2.8 Reciprocity and Radiative Coupling

| Field | Record |
|-------|--------|
| **Purpose** | Lorentz reciprocity in operator form; modal orthogonality/coupling; TX/RX reciprocity. |
| **Audit** | Material reciprocity assumptions; S-parameter normalization (§13.7). |
| **Figures** | Lorentz chain, modal coupling, transmit–receive chain. |

---

## §2.9 Action of Radiation Operators on Angular Spectra

| Field | Record |
|-------|--------|
| **Purpose** | Plane-wave angular spectrum; retained/suppressed/filtered components; far angular accessibility. |
| **Physical question** | How does \(\mathcal{R}_\omega\) act on directional spectrum content? |
| **Ch.3/4 fwd** | Full VSH / SO(3) harmonic catalog — **CH3-HOME** (forward pointers only). |
| **Figures** | Plane-wave radiation chain, filter chain, near-to-far, accessibility pipeline. |

---

## §2.10 Examples (2.10.1–2.10.4)

Worked postures: compactness; NR superposition; evanescent far suppression; structured-source radiation.  
**Figures:** `fig:ch2.wp-*` (four vignette-style figures).

---

## §2.11 Summary (2.11.1–2.11.3)

Results recap; topics for later chapters; relation to Ch.3–4. **Inheritance section** for Volume I forward progression.

---

## Global inventories (Stage 1)

| Item | Count / range |
|------|----------------|
| `\label{eq:ch2.*}` | 438 |
| `\label{fig:ch2.*}` | 54 |
| Tables | 0 |
| Formal `\begin{problem}` | 0 (examples in §2.10, not labeled problem environment) |
| `\cite{...}` invocations | ~2850 (heavy inline citation density) |
| Distinct bib keys (parsed naïvely) | ~20+ core keys (see history map) |
