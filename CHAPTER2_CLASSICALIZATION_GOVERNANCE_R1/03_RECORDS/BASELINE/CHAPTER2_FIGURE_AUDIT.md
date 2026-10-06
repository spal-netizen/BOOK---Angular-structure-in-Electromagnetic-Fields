# Chapter 2 — Figure Audit (Stage 2 reconciliation)

## Summary counts (FACT — `latex/ch02.tex`)

| Metric | Value |
|--------|--------|
| `\begin{figure}` | **53** |
| `\label{fig:ch2.*}` | **54** (includes `\phantomsection\label{fig:ch2.radiation-rotation-commutation}`) |
| `\ChOneFigBlock` | **51** |
| **PDF baseline (Stage 1 scan)** | Numbered captions **2.0–2.18** (~19) |

## Reconciliation conclusion (Stage 2)

The immutable author-review PDF **does not** contain one numbered float per current source figure. Plausible explanations (not mutually exclusive):

1. Author-review PDF built from an **earlier shorter** `ch02.tex`.  
2. Current TeX **expanded** figure set after PDF freeze.  
3. PDF extraction under-counts (unlikely to explain 53→19 gap).

**Required before transformation renumbering:** controlled build + manifest (**AD-004**, CH2-D004/D005). Stage 2 **did not compile**.

## Label inventory and disposition (proposed)

All 54 labels listed in Stage 1 audit remain valid source artifacts. Stage 2 adds **disposition**:

| Group | Labels (pattern) | PDF presence | Disposition |
|-------|------------------|--------------|-------------|
| Spine / core | `master-spine`, `source-radiation-sequence`, `reactive-radiative-split`, `maxwell-boundary-stack`, `sommerfeld-far-zone`, `rad-nr-component-split` | Unknown until build | **PRESERVE** |
| Measurement chains | `*-measurement chain` (15 labels) | Likely compressed in PDF | **MERGE** → 3–4 figures (architecture §G) |
| Green / causality | `dyadic-*`, `retarded-light-cone`, `causal-light-cone`, `singular-regularization-split` | — | **PRESERVE** selective |
| Function-space formal | `sobolev-*`, `cavity-quotient-*`, `self-adjoint-*` | — | **COMPRESS** (0–2 retained) |
| Spectral / Fredholm | `signature-aperture-svd`, `radiation-spectral-decomposition`, `fredholm-*`, `geometric-spectrum-*` | — | **PRESERVE** key 2–3 |
| Null / reciprocity / spectrum | `radiation-nullspace-*`, `lorentz-*`, `plane-wave-*`, `far-angular-accessibility-pipeline` | — | **PRESERVE** |
| Worked examples | `wp-*` (4) | — | **PRESERVE** |

## Quality criteria (unchanged)

- Each **retained** figure must have caption + in-body physical interpretation after transformation.  
- No redraw in Stage 2.  
- No renumbering until AD-004 resolved.

## Duplication

Multiple chain figures differ only in node labels — **MERGE** candidates (CH2-D010).
