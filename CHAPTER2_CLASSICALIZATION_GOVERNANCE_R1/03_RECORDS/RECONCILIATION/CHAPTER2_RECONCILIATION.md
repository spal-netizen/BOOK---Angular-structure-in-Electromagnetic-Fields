# Chapter 2 — Scientific Reconciliation (Stage 2)

**Status:** Prepared for transformation pass — **no manuscript edits in Stage 2**  
**Baseline:** Immutable PDF SHA `52C7066D…B3BE`; source `latex/ch02.tex` (read-only)

---

## 1. Central Maxwell / radiation chain (reconciled narrative)

**Physical chain (target classical exposition):**

\[
\Jimp \;\xrightarrow{\;\text{admissibility}\;}\; \mathcal{S}_\omega \;\xrightarrow{\;\Pi_{\mathrm{rad}}\;}\; \mathcal{R}_\omega[\Jimp] \;\xrightarrow{\;\mathcal{O}_{\mathrm{far}}\;}\; \text{pattern observables} \;\xrightarrow{\;\mathcal{O}_{\mathrm{meas}}\;}\; \mathbb{C}^{N}.
\]

| Step | Object | Scientific role |
|------|--------|-----------------|
| Source | \(\Jimp\in\mathcal{J}_\Omega\), \(\mathcal{D}_J=1\) | Finite impressed current; charge continuity + BC compatibility (Ch.1) |
| Maxwell completion | \(\mathcal{S}_\omega:\mathcal{J}_\Omega\to\mathcal{F}_\Omega\) | Resolvent / BVP solution \((\E,\H)\) — **full** field, reactive + radiative |
| Outgoing + propagating filter | \(\Pi_{\mathrm{rad}}=\mathcal{O}_{\mathrm{out}}\circ\Pi_{\mathrm{prop}}\) | Retains Sommerfeld-class **outgoing propagating** far-zone content |
| Radiation map | \(\mathcal{R}_\omega=\Pi_{\mathrm{rad}}\circ\mathcal{S}_\omega\) | Source-to-radiative-field map |
| Observation | \(\Lambda_{\mathrm{rad}}=\mathcal{O}_{\mathrm{far}}\circ\mathcal{R}_\omega\) | Far-zone linear functional |
| Laboratory | \(\mathcal{Q}_\omega=\mathcal{O}_{\mathrm{meas}}\circ\Lambda_{\mathrm{rad}}\) | Finite-rank probe map to \(\mathbb{C}^{N}\) (**notation proposal**, §9) |

Green functions implement \(\mathcal{S}_\omega\) in homogeneous regions; retarded/outgoing branch = \(\mathcal{O}_{\mathrm{out}}\) on kernels (§2.3, §2.4.2).

---

## 2. \(\Pi_{\mathrm{rad}}\) — scientific determination

### 2.1 What the manuscript actually defines

1. **Intro (§2.0.1):** \(\Pi_{\mathrm{rad}}:\mathcal{F}_\Omega\to\mathcal{F}_{\mathrm{rad}}\) — “outgoing selector” on **completed field pairs**, retaining far-zone asymptotics satisfying Sommerfeld-outgoing qualification.  
2. **§2.2.3 (`sec:ch224`):** Formal spectral projectors \(\Pi_{\mathrm{prop}},\Pi_{\mathrm{ev}},\Pi_{\mathrm{non}}\) on \(\widehat{\mathcal{F}}_\Omega\) (explicitly **formal** until Ch.3 rigged completion).  
3. **Locked composition (Eq. `eq:ch2.rad-projection-composition`):**
   \[
   \Pi_{\mathrm{rad}} = \mathcal{O}_{\mathrm{out}}\circ\Pi_{\mathrm{prop}}.
   \]
4. **§2.4.2:** \(\mathcal{O}_{\mathrm{out}}:\mathcal{F}_\Omega\to\mathcal{F}_{\mathrm{SF}}\) — idempotent on \(\mathcal{F}_{\mathrm{SF}}\); annihilates incoming propagating content; fixes outgoing \(k_z\) sheet (Eq. `eq:ch2.outgoing-plane-wave-criterion`).

### 2.2 What \(\Pi_{\mathrm{rad}}\) is **not**

- **Not** a generic Hilbert **orthogonal** projection on \(\mathcal{F}_\Omega\) unless an inner product and closed subspace are specified (spectral projectors are deferred formal on \(\widehat{\mathcal{F}}_\Omega\)).  
- **Not** the same as a numerical spatial window (“non-idempotent mask”, manuscript’s own warning ~506–514).  
- **Not** evanescent extraction: \(\Pi_{\mathrm{rad}}\Pi_{\mathrm{ev}}=0\) (Eq. `eq:ch2.rad-null-on-evanescent`).

### 2.3 Recommended classical terminology (transformation pass)

| Avoid (unless qualified) | Prefer |
|--------------------------|--------|
| “Orthogonal projection” on \(\mathcal{F}_\Omega\) | **Outgoing radiative extraction map** |
| “Projection” alone | **Sommerfeld-class restriction** to \(\mathcal{F}_{\mathrm{rad}}\subset\Pi_{\mathrm{prop}}\mathcal{F}_\Omega\) |
| “Filter” (alone) | **Outgoing propagating selector** \(\mathcal{O}_{\mathrm{out}}\) after \(\Pi_{\mathrm{prop}}\) |

### 2.4 Idempotency (conditional, exact)

| Domain | Statement | Status |
|--------|-----------|--------|
| \(\mathcal{F}_{\mathrm{rad}}=\operatorname{ran}\Pi_{\mathrm{rad}}\) | \(\Pi_{\mathrm{rad}}[\mathbf{u}]=\mathbf{u}\) | **Exact** on radiative class |
| Algebra | \(\Pi_{\mathrm{rad}}\Pi_{\mathrm{prop}}=\Pi_{\mathrm{rad}}\), \(\Pi_{\mathrm{rad}}^2=\Pi_{\mathrm{rad}}\) on \(\operatorname{ran}(\Pi_{\mathrm{rad}})\) | **Exact** given Eqs. 3351–3368 |
| \(\mathcal{F}_\Omega\) generally | Idempotency | **False** without prior outgoing completion — manuscript acknowledges (~506–510) |

**Kernel / range (field side):** \(\ker\Pi_{\mathrm{rad}}\) includes reactive near fields, evanescent and non-propagating spectral content, incoming propagating components. **Range:** \(\mathcal{F}_{\mathrm{rad}}\) — transverse outgoing \(1/r\) class (linked to §2.5.2).

### 2.5 Defect disposition

- **CH2-D006:** → **ANALYZED** (definition anchored at `eq:ch2.rad-projection-composition`; prose “projection” to be softened in transformation).  
- **Author decision:** Accept recommended terminology or retain “projection” with explicit non-orthogonal qualifier.

---

## 3. Operator domains (honest audit summary)

| Operator | Domain | Codomain | Exact / asymptotic / formal | Notes |
|----------|--------|----------|-----------------------------|-------|
| \(\mathcal{M}_\omega\) | \(\mathcal{D}(\mathcal{M}_\omega)\subset\mathcal{F}_\Omega\) | \(\mathcal{Y}_{\mathrm{vol}}\) | **Exact** (residual operator) | Unbounded; Maxwell **residual** rows, not solution map |
| \(\mathcal{B}_\Gamma\) | \(\mathcal{D}(\mathcal{B}_\Gamma)\subset\mathcal{T}_\Gamma\) | \(\mathcal{Y}_\Gamma\) | **Exact** | Impedance / outgoing trace classes from Ch.1 |
| \(\mathcal{L}_\omega\) | \(\mathcal{D}(\mathcal{L}_\omega)\) | \(\mathcal{Y}_{\mathrm{vol}}\times\mathcal{Y}_\Gamma\) | **Exact** | Composite BVP operator |
| \(\mathcal{S}_\omega\) | \(\mathcal{J}_\Omega\) | \(\mathcal{F}_\Omega\) | **Exact** on physical resolvent branch | \(\mathcal{L}_\omega^{-1}\circ\) forcing — not algebraic inverse on all \(\mathcal{U}_\omega\) |
| \(\mathcal{O}_{\mathrm{out}}\) | \(\mathcal{F}_\Omega\) (declared) | \(\mathcal{F}_{\mathrm{SF}}\) | **Exact** under Sommerfeld assumptions | Idempotent on \(\mathcal{F}_{\mathrm{SF}}\) |
| \(\Pi_{\mathrm{prop}},\Pi_{\mathrm{ev}}\) | \(\widehat{\mathcal{F}}_\Omega\) | same | **Formal** until Ch.3 | Manuscript states this explicitly (~3316–3321) |
| \(\Pi_{\mathrm{rad}}\) | \(\mathcal{F}_\Omega\) (after completion) | \(\mathcal{F}_{\mathrm{rad}}\) | **Exact** as composition | See §2 |
| \(\mathcal{R}_\omega\) | \(\mathcal{J}_\Omega\) | \(\mathcal{F}_{\mathrm{rad}}\) | **Exact** | Linear on fixed BC/material |
| \(\mathcal{O}_{\mathrm{far}}\) | \(\mathcal{F}_{\mathrm{rad}}\) | observable space | **Exact** linear | Pattern / harmonic probe |
| \(\mathcal{O}_{\mathrm{meas}}\) | \(\mathcal{F}_{\mathrm{rad}}\) | \(\mathbb{C}^{N}\) | **Exact** finite-rank | rank \(\le N\) |
| \(\mathcal{M}_\omega\) (reconstruction) | \(\mathcal{J}_\Omega\) | \(\mathbb{C}^{N}\) | **Exact** composition | **NOTATION COLLISION** — rename to \(\mathcal{Q}_\omega\) (§9) |

**Adjoints:** Volume adjoint \(\mathcal{M}_\omega^\dagger\) defined with boundary pairing (Eq. `eq:ch2.volume-adjoint-definition`) — **conditional** on PEC/subspaces. Lorentz reciprocity (§2.8) uses adjoint relations — verify material reciprocity assumptions at transformation.

**Compactness:** Invoked for radiation operators on bounded domains / aperture SV decay — **conditional** (§2.6); not global for all \(\mathcal{S}_\omega\).

---

## 4. Time-convention reconciliation

### 4.1 Existing conventions (FACT)

| Artifact | Time factor | \(\partial_t\) on phasor | Outgoing spatial phase |
|----------|-------------|--------------------------|-------------------------|
| **Ch.1 MICROR1-R3B snapshot** (`ARCHIVE/CHAPTER1/SOURCE_SNAPSHOT`) | \(\exp(+\jj\omega t)\) | \(+\jj\omega\) | \(\exp(-\jj kr)\) (per `vol-i-time-convention.tex`) |
| **`vol-i-time-convention.tex` (Ch.1 snapshot copy in `01_GOVERNANCE/`)** | \(\exp(+\jj\omega t)\) | \(+\jj\omega\) | \(\exp(-\jj kr)\) |
| **`latex/ch01.tex`, `latex/ch02.tex`, `latex/preamble.tex`** | \(\exp(-\jj\omega t)\) | \(-\jj\omega\) in displayed curl/charge links | \(\exp(-\jj k_0 r)\) stated in Ch.2 |
| **`.cursor/rules/book-consistency.mdc`** | \(\exp(-j\omega t)\) | \(-j\omega\) | (not fully specified) |

### 4.2 Proposed authoritative Volume-I convention (authorial direction in Stage-2 command)

**Proposed:** \(\exp(+\jj\omega t)\) physical time dependence; phasor \(\mathbf{F}(\mathbf{r})\) in \(\Re\{\mathbf{F}\,e^{+\jj\omega t}\}\); \(\partial_t\to+\jj\omega\); outgoing sphere \(\propto e^{-\jj kr}\).

### 4.3 Consequences if proposal is adopted (record only — **no silent edits**)

| Area | Consequence |
|------|-------------|
| Maxwell curls | Sign flip chain vs \(-j\omega t\) manuscript: e.g. \(\curl\E=-\jj\omega\mu\H\) vs \(+\jj\omega\mu\H\) depending on which convention is locked |
| Charge continuity | \(\div\Jimp=-\jj\omega\rho\) vs \(+\jj\omega\rho\) |
| Green / radiation integral | Factor \(-\jj\omega\mu_0\) in Eq. `eq:ch2.radiation-integral` must be re-derived |
| Poynting | \(\mathbf{S}=\tfrac12\E\times\H^*\) and \(\Re\oint\) interpretation tied to time convention |
| Sommerfeld / \(k_z\) | Outgoing root sign in Eq. `eq:ch2.outgoing-plane-wave-criterion` must match locked convention |
| Fourier / Laplace | Causality subsection links — re-verify |
| Ch.1 boundary | **Frozen Ch.1 PDF** already +j; **working `latex/ch01.tex`** is −j — reconciliation is **Volume-wide**, not Ch.2-only |

### 4.4 Files requiring eventual reconciliation (transformation pass)

- `latex/ch02.tex` (all `\exp(-\jj\omega t)` and dependent signs)  
- `latex/ch01.tex` (if unified with Ch.1 freeze — **Ch.1 PDF frozen; TeX tree may stay divergent until author orders TeX realignment**)  
- `latex/preamble.tex` header comment  
- `.cursor/rules/book-consistency.mdc`  
- `latex/macros.tex` / global convention inserts if any  
- Cross-chapter `\ref{eq:ch1.*}` charge/curl displays  

### 4.5 Gate

**AUTHOR DECISION REQUIRED — VOLUME-I TIME CONVENTION**

Until recorded author approval: transformation pass must **not** assume sign edits are authorized.

**CH2-D002 / CH2-D003:** Status → **ANALYZED**, gate **OPEN**.

---

## 5. Green function / sign audit (preliminary)

Manuscript uses outgoing dyadic with \(e^{-\jj k_0 R}/(4\pi R)\) structure and explicit outgoing branch \(\mathcal{O}_{\mathrm{out}}\) on kernels (§2.4.2). **Dependency:** time convention (§4). **CH2-D012** (new): full sign audit **blocked** until time convention locked.

---

## 6. Function-space material — classification framework

Applied in `CHAPTER2_ARCHITECTURE_PLAN.md` per subsection. Global rule:

- **Class A:** \(\mathcal{S}_\omega\), \(\mathcal{R}_\omega\), Sommerfeld, reciprocity, null space — keep with physical lead-in.  
- **Class B:** Trace maps, graph norm — compress to one interlude in §2.1.  
- **Class C:** Spectral projectors on \(\widehat{\mathcal{F}}_\Omega\) — short formal box + defer rigor to Ch.3.  
- **Class D/E:** Repeated “measurement chain” figures, `% PHYSICAL-MEMORY`, 86 `physicalvignette` blocks — scaffolding (§15).

---

## 7. Claim-strength audit (sample; full list in defect ledger)

| Pattern | Example locus | Classification |
|---------|---------------|----------------|
| “idempotent on \(\mathcal{F}_{\mathrm{rad}}\)” | ~506, ~5192 | **Conditional exact** — OK with §2.2 qualification |
| “10×” reactive overstated | ~268–269 | **Numerical illustrative** — mark illustrative, not theorem |
| “formal on \(\widehat{\mathcal{F}}_\Omega\)” | ~3316 | **Explicit conditional** — preserve |
| “orthogonal spectral projectors” | ~3288 | **Conditional** — Ch.3 dependency |
| rank caps | ~5900+ | **Exact** under linear finite-rank assumptions |

---

## 8. Cross-chapter boundaries (summary)

| Topic | Home | Ch.2 role |
|-------|------|-----------|
| Admissibility, \(\mathcal{D}_J\), Poynting | Ch.1 | USE + physical reminder |
| VSH, SO(3), modal completeness | Ch.3 | Motivate only; `\ref` |
| Realizability, SV synthesis, effective dimension | Ch.4 | Forward pointers in §2.11 |
| Angular spectrum (plane-wave) | Ch.2 §2.9 | **HOME** (pre-VSH labeling) |

---

## 9. Notation collision resolution (proposal — single record)

**Problem:** \(\mathcal{M}_\omega\) = Maxwell volume operator (§2.0.2, §2.1) **and** measurement map (Eq. `eq:ch2.reconstruction-observation-map`).

**Proposed transformation convention:**

- **Keep** \(\mathcal{M}_\omega\) for Maxwell volume operator only.  
- **Rename** reconstruction/measurement operator to **\(\mathcal{Q}_\omega\)**:
  \[
  \mathcal{Q}_\omega = \mathcal{O}_{\mathrm{meas}}\circ\mathcal{O}_{\mathrm{far}}\circ\mathcal{R}_\omega = \mathcal{O}_{\mathrm{meas}}\circ\Lambda_{\mathrm{rad}}.
  \]
- Optional: typeset Maxwell operator as \(\mathsf{M}_\omega^{\mathrm{Max}}\) only if author rejects \(\mathcal{Q}_\omega\).

**AUTHOR DECISION REQUIRED** if \(\mathcal{Q}_\omega\) is rejected — alternative must be recorded once in notation map.

**CH2-D011:** → **DECISION RECORDED (pending author ratification)**.

---

## 10. Stage 2 dependency closure

Transformation pass **depends on:**

1. Author: Volume-I time convention  
2. Author: \(\mathcal{Q}_\omega\) vs alternative measurement symbol  
3. Author: Figure budget (merge chains vs retain 53 floats)  
4. Build: PDF ↔ source figure map (recommended pre-transform build, not done in Stage 2)

**End of reconciliation record.**
