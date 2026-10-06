# Chapter 2 — Classical Architecture Plan (Stage 2)

**Purpose:** Single transformation map for one controlled classicalization pass.  
**No manuscript edits in Stage 2.**

---

## A. What Chapter 2 is fundamentally about

**Answer:** Given an admissible finite source, Maxwell theory determines a field; outgoing selection determines what constitutes **radiation**; operator composition explains **what laboratories can observe** (finite rank, null spaces, reciprocity); angular spectrum describes **directional radiative content** before Ch.3 harmonic labeling.

---

## B. Continuous argument (intellectual spine)

| Movement | Physical question opened | Uses from before | New difficulty | Math needed | Outcome |
|----------|-------------------------|------------------|----------------|-------------|---------|
| **I. Source problem** | What field does \(\Jimp\) drive? | Ch.1 admissibility | Full vs radiative field | \(\mathcal{S}_\omega\), \(\mathcal{L}_\omega\) | Solution map |
| **II. Green solution** | How does source at \(\mathbf{r}'\) reach \(\mathbf{r}\)? | \(\mathcal{S}_\omega\) | Singularity, causality | Dyadic Green, retardation | Integral representation |
| **III. Outgoing condition** | Which solutions are physical in open space? | Green branches | Incoming vs outgoing | Sommerfeld, \(\mathcal{O}_{\mathrm{out}}\) | Uniqueness class |
| **IV. Field → radiation** | What survives at infinity? | Outgoing class | Reactive vs \(1/r\) transverse | \(\Pi_{\mathrm{rad}}\), \(\mathcal{R}_\omega\) | Radiation map |
| **V. Spectral / geometry** | Why bounded sources limit angular DOF? | \(\mathcal{R}_\omega\) | Compactness, SV decay | Spectral theory (conditional) | Pattern solvability |
| **VI. NR sources** | Why strong fields, zero pattern? | \(\ker\mathcal{R}_\omega\) | Non-uniqueness | Null space | Invisibility / inverse ill-posedness |
| **VII. Reciprocity** | TX vs RX | Lorentz | Normalization | Adjoints | Coupling symmetry |
| **VIII. Angular spectrum** | Direction-by-direction radiative field | \(\mathcal{R}_\omega\) | Evanescent vs propagating | Plane-wave spectrum | Bridge to Ch.3 |
| **IX. Examples** | Make principles tangible | All above | — | Worked cases | Memory |
| **X. Summary** | What Ch.3 must label | Ch.2 results | Rotational organization | — | Forward pointer |

---

## C. Proposed final section architecture (tested against content)

**Target:** ~8–10 top-level sections (not mandatory page cut). Map from **current** → **proposed**:

| Current | Proposed placement | Action |
|---------|-------------------|--------|
| §2.0 + §2.0.1–2.0.3 | **§2.1 The source-to-field problem** | **MERGE/COMPRESS** intro + operator names; one spine figure |
| §2.1 (function spaces) | **§2.2 Mathematical setting** (compact interlude) | **COMPRESS** 2.1.1–2.1.4 → one section + optional appendix-style box |
| §2.2 (time/frequency) | **§2.3 Harmonic Maxwell and causality** | **TRANSFORM**; lead with physics; fold spectral projectors |
| §2.3 (Green) | **§2.4 Green functions and the retarded solution** | **RETAIN** core; trim duplicate chains |
| §2.4 (radiation uniqueness) | **§2.5 Outgoing radiation and uniqueness** | **RETAIN**; unify \(\mathcal{O}_{\mathrm{out}}\), \(\Pi_{\mathrm{rad}}\) prose |
| §2.5 (radiation integrals) | **§2.6 From near field to far field** | **RETAIN**; flux subsection **COMPRESS** |
| §2.6 (spectral) | **§2.7 Spectral limits of finite radiators** | **COMPRESS** formalism; keep aperture SV example |
| §2.7 (null spaces) | **§2.8 Non-radiating sources and invisible currents** | **RETAIN** |
| §2.8 (reciprocity) | **§2.9 Reciprocity** | **RETAIN** |
| §2.9 (angular spectrum) | **§2.10 Angular spectrum of radiation** | **RETAIN**; stop before VSH |
| §2.10 (examples) | **§2.11 Physical examples** | **TRANSFORM** vignettes → classical examples |
| §2.11 (summary) | **§2.12 Summary and passage to Chapter 3** | **RETAIN** inheritance |

**Section count:** 12 proposed vs 11 current + intro — net **compression** via merged §2.0.

---

## D. Subsection-level disposition (existing → action)

Legend: **R** retain | **M** merge | **C** compress | **L** relocate/defer | **T** transform prose | **X** remove scaffolding | **A** author decision

| ID | Title | Action | Reason |
|----|-------|--------|--------|
| 2.0.1 | Radiation as operator | **M** into new §2.1 | Duplicates §2.0 narrative |
| 2.0.2 | Maxwell operator form | **R/C** | Needed early; trim BC stack repetition |
| 2.0.3 | Admissibility export | **C** | Ch.1 inheritance — short bridge |
| 2.1.1 | Spaces | **C** | Class B — interlude |
| 2.1.2 | Domain/adjoint | **C** | Keep adjoint only where reciprocity needs |
| 2.1.3 | Compactness/rank | **R/C** | Links to §2.6–2.7 |
| 2.1.4 | Self-adjoint | **C** | Cavity-specific — compress |
| 2.2.1 | TD evolution | **R** | Causality anchor |
| 2.2.2 | FD operators | **R** | |
| 2.2.3 | Causality + **sec:ch224** | **T/C** | Spectral projectors → formal box |
| 2.3.* | Green subsections | **R** | Core physics |
| 2.4.* | Radiation/uniqueness | **R** | Core |
| 2.5.3 | Ang. momentum flux | **A** | Overlap Ch.1/Ch.3 — compress or defer detail |
| 2.6.3 | Rotational symmetry | **L** → Ch.3 | SO(3) preview only |
| 2.9.* | Angular spectrum | **R** | Ch.2 HOME |
| 2.10.* | Examples | **T** | Remove duplicate vignette boilerplate |
| 2.11.* | Summary | **R** | Inheritance |

---

## E. Function-space passage classification (§2.1 sample)

| Passage topic | Class | Transformation |
|---------------|-------|----------------|
| \(\HCurl\), traces | B→C | One paragraph + cite standard refs |
| Graph norm | C | Footnote or boxed interlude |
| Compact embedding schematic | B | Keep figure or merge with rank figure |
| Self-adjoint completion | F/E | Compress unless cavity example retained |
| Fredholm (§2.6.4) | A | Keep if NR/inversion claim depends |

---

## F. Scaffolding / report-like material (remove from prose, preserve science)

| Construct | Count (source) | Action |
|-----------|----------------|--------|
| `physicalvignette` | **86** | **X/T** — extract one compact-range paragraph per major section max |
| `% PHYSICAL-MEMORY:*` | many | **X** — do not appear in classical prose |
| Repeated horn/NA paragraphs | high | **M** — one canonical laboratory paragraph in §2.1 |
| “measurement chain” figure series | ~15+ | **M** — target **4–6** chain figures total |
| `% PROOF: AUTHOR REVIEW` | if any | retain marker until verified |

---

## G. Figure architecture (strategy)

**Source:** 53 `\begin{figure}`, 54 labels. **PDF baseline:** ~19 numbered figures (2.0–2.18).

**Reconciliation status (Stage 2):** PDF almost certainly reflects **author-review compression** or **different float policy** vs current `ch02.tex`. **Build map required** before transformation renumbering.

**Proposed tiers:**

| Tier | Labels (examples) | Strategy |
|------|-------------------|----------|
| **Anchor** | `master-spine`, `source-radiation-sequence`, `sommerfeld-far-zone`, `rad-nr-component-split` | **PRESERVE** |
| **Operator chains** | `*-measurement chain` (15+) | **MERGE** to 3–4 canonical chains |
| **Green/radiation** | dyadic, dipole, retarded cone | **PRESERVE** selective |
| **Examples** | `wp-*` (4) | **PRESERVE** |
| **Formalism** | Sobolev ladder, cavity quotient | **COMPRESS** — 1–2 figures |

**Do not renumber** until build confirms PDF mapping.

---

## H. Historical strategy

- **Keep causal thread:** Maxwell → Poynting → Stratton/Sommerfeld → finite radiator / Harrington → modern inversion (Devaney) — **once** in §2.1 opening.  
- **Remove** repeated Stratton/Harrington blocks tied to vignettes.  
- **Catalogue citations** in technical sections — retain point-of-claim, reduce narrative duplication.

---

## I. Strongest physical examples (protect)

| Example area | Subsection | Action |
|--------------|------------|--------|
| Small dipole / Hertzian | §2.3.2 | **PRESERVE** |
| NR superposition | §2.10.2 | **PRESERVE** |
| Evanescent far suppression | §2.10.3 | **PRESERVE** |
| Structured ring/array | §2.10.4 | **PRESERVE** |
| Aperture SV decay | §2.6.1 | **PRESERVE** (qualify illustrative numerics) |
| Silver–Müller vs Sommerfeld | §2.4.1 | **PRESERVE** as limiting-case discussion |

---

## J. Preservation matrix (summary)

Full matrix in `CHAPTER2_TRANSFORMATION_REPORT.md`. Rule: **no legitimate physics deleted** — compress scaffolding only.

---

## K. Single-pass transformation scope

**In scope for Pass 1 (after author gates):**

1. Prose voice + section merges per this plan  
2. Time-convention sign pass (if authorized)  
3. \(\Pi_{\mathrm{rad}}\) terminology + one definition locus  
4. \(\mathcal{M}_\omega\to\mathcal{Q}_\omega\) for measurement (if authorized)  
5. Vignette/scaffolding removal  
6. Figure merge (author-approved list)  
7. Ch.3/4 boundary trims (deferrals only by `\ref`)

**Out of scope:** Ch.1 edits; equation renumbering unless reconciliation forces; new theorems; VSH development.

---

## L. Stage 2 architecture freeze

This document is the **controlled architecture baseline** for the classicalization command. Changes require author reopen.
