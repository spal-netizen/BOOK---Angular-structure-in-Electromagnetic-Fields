# Chapters 2–4 planning (no manuscript edits in R13.1 pass)

**Reference chapter:** Chapter 1 benchmark tag `chapter1-benchmark-20261114-a05b9cce` (62 pp, PDF `A05B9CCE…`).  
**Stage A audit (required before rewrite):** `VOLUME_I_RELEASE/VOLUME_I_CHAPTERS_2_TO_4_INDEPENDENT_TRANSFORMATION_AUDIT.md`.  
**Working branch:** `volume-i/ch2-4-coordinated-transformation`.  
**TOC authority:** `TOC/volume-I-ch01-04-FINAL.txt`, `00-FORWARD-MAP.yaml`.

---

## Chapter 2 — Maxwell Operators and Radiation Mappings

| Field | Plan |
|-------|------|
| **Subject** | Source-to-field operators, Green functions, radiation conditions, angular-spectrum filters |
| **Prerequisites from Ch. 1** | §1.0.3 admissibility; §1.1.2–1.1.3 sources, uniqueness, outgoing selection; §1.1.4–1.1.5 flux balances; §1.2.3–1.2.4 reactive/radiative; §1.7 bridge (dyadic Green, Hansen modal transport **deferred** from Ch. 1) |
| **Principal HOME derivations** | Helmholtz/curl-curl operators; scalar/vector/dyadic Green; Sommerfeld radiation; radiation integrals; NR null spaces; plane-wave angular spectrum operators |
| **Primary sources** | Stratton (Green, radiation); Harrington (operators, spectrum); Tai (dyadic Green); Jackson (radiation integrals); Sommerfeld (radiation condition) |
| **Expected figures** | Source-support / observation shell; near-intermediate-far shells; angular-spectrum filter schematic; NR current example (`[FIG+PROB]` §2.10) |
| **Must prove (HOME)** | Operator domains; radiation condition ⇒ uniqueness **cited with Ch. 1 chain**; reciprocity in operator form |
| **Defer** | Full VSH eigenbasis (Ch. 3); realizability synthesis (Ch. 4); Volume II material per §2.11.2 |
| **Avoid overlap** | Do not re-derive VSW curls (Ch. 1); do not reopen Beth/Chu dipole benchmarks except `[USE]` |

**Entry subsection (authorized):** §2.0.1 per governance / `latex/ch02.tex`.

---

## Chapter 3 — Angular Momentum Eigenfields and Representation Theory

| Field | Plan |
|-------|------|
| **Subject** | Hilbert spaces for radiative fields; $\mathbf{J}$ operators; VSH/$Y_\ell^m$ eigenfields; spectral coupling |
| **Prerequisites** | Ch. 1 angular transport vs organization; Ch. 2 radiation operators §2.5–§2.9, §2.11.3 export |
| **Principal HOME derivations** | Rigged Hilbert framework; angular momentum commutators; VSH definitions **once**; modal projection operators |
| **Primary sources** | Hansen; Stratton §VSW; Rose; Varadan (as in bib); Beth/helicity only `[USE]` |
| **Expected figures** | Eigenfield topology on $S^2$; rotation action; mode coupling diagrams |
| **Must prove** | Definitions of $Y_\ell^m$, $\mathbf{M}_{\ell m}$, $\mathbf{N}_{\ell m}$ with book normalization; domain of radiation operator on modal coefficients |
| **Defer** | Full synthesis/realizability (Ch. 4); gauge spin-orbit limits already in Ch. 1 §1.4.5 |
| **Avoid overlap** | Uniqueness / outgoing proof (Ch. 1–2); closed-surface stress theorems (Ch. 1) |

---

## Chapter 4 — (Volume I cap — coupling, truncation, realizability sketch)

| Field | Plan |
|-------|------|
| **Subject** | Eigenfield coupling, truncation, realizability hierarchy (per TOC master) |
| **Prerequisites** | Ch. 3 eigenfields; Ch. 2 NR null space §2.7; Ch. 1 realizability / observables §1.4–§1.5 |
| **Principal HOME derivations** | Coupling coefficients; truncation error budgets; realizability conditions stated with explicit passivity |
| **Primary sources** | Collin; Felsen; historical realizability papers per `latex/references.bib` |
| **Expected figures** | Truncation geometry; coupling network schematics |
| **Must prove** | Theorems owned in `TOC/THEOREM-HOME-MATRIX-19CH-ULTIMATE.md` for Ch. 4 lines marked `[HOME]` |
| **Defer** | Volume II chapters per §4.11 |
| **Avoid overlap** | Re-proving Chu $Q$ or dipole fields |

---

## Shared acceleration tactics

1. One convention freeze per chapter (diff against `SCIENTIFIC_CONVENTIONS.md`).
2. HOME-only primary-source extraction; everything else `\ref{ch:01}` / `[USE]`.
3. One validation script file per chapter mimicking `CHAPTER1_.../validation/ch01_*.py` pattern.
4. Figure register before lock; no R-series unless contradiction found.

**Explicit non-action:** R13.1 did **not** modify `latex/ch02.tex`, `latex/ch03.tex`, `latex/ch04.tex`, or shared bib beyond Chapter 1 build copies.
