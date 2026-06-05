# Chapter 2 TOC — Rigorous Flow Audit (Ch. 1 ↔ Ch. 2 ↔ Ch. 3)

**Status:** **LOCKED** (2026-05-29)  
**Authority:** Pre-drafting gate for Chapter 2; amends `TOC/volume-I-ch01-04-FINAL.txt` Ch. 2 block only (+ minimal Ch. 3 USE back-links).  
**Subsection count:** **45** (unchanged — no structural inflation).

---

## 1. Audit objective

Verify that Chapter 2's TOC:

1. **Inherits** every Ch. 1 outcome required by §1.7.3 without re-opening HOME proofs.  
2. **Supplies** every operator/radiation construct Ch. 3 and Ch. 4 must USE by reference.  
3. **Avoids** HOME/USE conflicts, duplicate theorem ownership, and conceptual jumps.  
4. **Preserves** the 171-subsection Volume I architecture.

---

## 2. Chapter 1 → Chapter 2 inheritance map

| Ch. 1 HOME result | Required Ch. 2 response | TOC action |
|-------------------|-------------------------|------------|
| §1.0.3 finite-energy admissibility | Operator domains in §2.1 | **ADD** `[USE SS1.0.3]` on §2.1.1, §2.1.4 |
| §1.1.1 Maxwell phasor form | Operator packaging, not re-derivation | §2.0.2 `[HOME]`; §2.2.2 inherits by `\ref` only |
| §1.1.2 sources, BC, impressed **J** | Source/field distribution spaces | **ADD** `[USE SS1.1.2]` on §2.1.1 |
| §1.1.3 IBVP uniqueness | Radiation uniqueness extension | **ADD** `[USE SS1.1.3]` on §2.4.3 |
| §1.1.4 stress, energy, momentum flux | Radiation-boundary flux operators | **EXPAND** §2.5.3 title + `[USE SS1.1.4]` |
| §1.1.5 angular-momentum balance | Flux operators at radiative boundary (no re-proof) | **ADD** `[USE SS1.1.5]` on §2.5.3 |
| §1.2.1–1.2.3 angular transport | Far-field angular accessibility | **ADD** `[USE SS1.2.1][USE SS1.2.3]` on §2.9.4 |
| §1.2.4 reactive vs radiative | Propagating/evanescent + radiative split | **ADD** `[USE SS1.2.4]` on §2.2.4, §2.5.4 |
| §1.3 rotations / invariants | Spectral degeneracy under SO(3) | §2.6.2 `[USE SS1.3]` (retained) |
| §1.4 gauge / helicity | **Forbidden repeat** in Ch. 2 | `00-FORWARD-MAP.yaml` enforced |
| §1.5 measurement protocol | Operator-level observables deferred to flux norms | §2.5.3 links power/flux to measurement |
| §1.7.3 bridge | Narrative continuity | §2.0.3 narrative bridge (no `[USE]` tag per Vol. I review rule) |

**Verdict:** Flow from Ch. 1 is **complete** after USE-tag and title amendments. No new Ch. 2 subsections required.

---

## 3. Chapter 2 → Chapter 3 supply map

| Ch. 3 need | Ch. 2 supplier | Gap? |
|------------|----------------|------|
| Hilbert/rigged function spaces (§3.1) | §2.1.1–§2.1.4 | **Link:** add `[USE SS2.1.1]` on §3.1.1 |
| Outgoing-wave admissibility (§3.3.3) | §2.4 Sommerfeld + uniqueness | Already `[USE SS2.4]` |
| Radiation integrals / asymptotics (§3.0.2) | §2.5.1–§2.5.2 | **Link:** add `[USE SS2.5.1][USE SS2.6.1]` on §3.0.2 |
| Abstract spectral decomposition (§3.4 eigenfields) | §2.6.1 Fredholm/spectral | Comment: §2.6.1 abstract; §3.4.1 concrete VSH HOME |
| Angular spectrum / far-field filter (§3.7–§3.8) | §2.9.1–§2.9.4 | **Clarify** §2.9.1 title (plane-wave angular spectrum operator) |
| Helmholtz / separation (§3.3.1) | §2.2.2 frequency Maxwell → Helmholtz operator | **Link:** add `[USE SS2.2.2]` on §3.3.1 |
| Gauge-invariant eigenfields (§3.9) | Ch. 1 §1.4 USE only | Already tagged |
| NR sources / null space (§4.7 via Ch. 3 examples) | §2.7 | Already `[USE SS2.7]` in Ch. 4 |

**Verdict:** Ch. 2 **supplies** all Ch. 3 prerequisites. Division of labour:

- **Ch. 2:** operators, Green mappings, radiation conditions, integrals, spectral/Fredholm structure, NR null spaces, reciprocity, **angular-spectrum operator action**.  
- **Ch. 3:** Hilbert closure, **J** operator algebra, VSH definitions, completeness, representation changes.

---

## 4. Section-by-section Ch. 2 ordering review

| Order | Section | Expert verdict |
|------:|---------|----------------|
| 2.0 | Introduction | Correct — conceptual radiation map before function spaces |
| 2.1 | Function spaces | Correct — domains before evolution/Green |
| 2.2 | Time/frequency Maxwell | Correct — Helmholtz operator HOME here; separation HOME in §3.3 |
| 2.3 | Green functions | Correct — before radiation integrals |
| 2.4 | Sommerfeld / uniqueness | Correct — before §2.5 integrals |
| 2.5 | Radiation integrals | Correct — after Green + radiation condition |
| 2.6 | Spectral / Fredholm | Correct — after integral operators defined |
| 2.7 | NR null spaces | Correct — before angular spectra (§2.9) per Vol. I review |
| 2.8 | Reciprocity | Correct — needs Green (§2.3) |
| 2.9 | Angular spectrum action | Correct — capstone before examples; feeds Ch. 3 |
| 2.10 | Examples | Correct — `[FIG+PROB]` after theory core |
| 2.11 | Forward map | Correct — sole `[DEFER]` block in Ch. 2 |

**No reordering required.**

---

## 5. HOME / USE / DEFER corrections applied

| Subsection | Prior state | Locked state |
|------------|-------------|--------------|
| 2.0.1 | untagged | `[HOME]` — radiation as source-to-field map (conceptual) |
| 2.0.2 | untagged | `[HOME]` — Maxwell operator form (no full re-derivation) |
| 2.0.3 | untagged | narrative bridge only (no TOC tag) |
| 2.1.1 | `[HOME]` | `[HOME][USE SS1.0.3][USE SS1.1.2]` |
| 2.1.4 | `[HOME]` | `[HOME][USE SS1.0.3]` |
| 2.2.4 | `[HOME]` | `[HOME][USE SS1.2.4]` |
| 2.4.1 | `[HOME]` | `[HOME][USE SS1.1.2]` |
| 2.4.3 | `[HOME]` | `[HOME][USE SS1.1.3]` |
| 2.5.3 | `[USE SS1.1.4]` | expanded title; `[USE SS1.1.4][USE SS1.1.5][USE SS1.2.3]` |
| 2.5.4 | `[USE SS2.2.4]` | `[USE SS1.2.4][USE SS2.2.4]` |
| 2.9.1 | `[HOME]` | title expanded; comment links to §3.8 basis change |
| 2.9.4 | `[HOME]` | `[HOME][USE SS1.2.1][USE SS1.2.3]` |
| 2.10.4 | `[HOME]` | `[HOME][USE SS1.2.2]` |
| 2.11.1–2.11.3 | untagged | `[DEFER]` |

---

## 6. Concepts explicitly NOT in Ch. 2 (deferred correctly)

| Concept | Owner chapter | Rationale |
|---------|---------------|-----------|
| VSH / \(M_{\ell m}, N_{\ell m}\) definitions | §3.4.1 | Representation HOME |
| \(\mathbf{J}\) operator on fields | §3.2 | AM eigenfield algebra |
| Wigner \(D\)-matrices | §3.2.4 | SO(3) representation |
| Debye potentials | §3.3.4 | Separation generating functions |
| Plane-wave ↔ spherical conversion matrices | §3.8.3 | Basis transformation HOME |
| Gauge transformation | §1.4 | Forbidden repeat |
| Full angular-momentum conservation proof | §1.1.5 | Forbidden repeat |

---

## 7. §2.11.3 bridge obligations (for drafting)

When drafting §2.11.3, explicitly forward-map these Ch. 2 exports to Ch. 3:

1. Radiation operator \(\mathcal{R}\) and source-to-field map (§2.0.1, §2.5.1).  
2. Sommerfeld/outgoing admissibility (§2.4).  
3. Spectral/Fredholm skeleton awaiting VSH eigenbasis (§2.6.1, §2.6.3).  
4. Angular-spectrum filter and far-field accessibility (§2.9).  
5. NR null-space taxonomy (§2.7) — Ch. 4 USE, Ch. 3 cites where mode coupling breaks.

---

## 8. Sign-off

| Criterion | Result |
|-----------|--------|
| No missing Ch. 1 → Ch. 2 links | **PASS** (after amendments) |
| No missing Ch. 2 → Ch. 3 supplies | **PASS** (after Ch. 3 USE back-links) |
| Subsection count preserved (45) | **PASS** |
| HOME/USE/DEFER discipline | **PASS** |
| Ready for `GCHECK 2.0.1` | **YES** |

**Authoritative TOC updated in:** `TOC/volume-I-ch01-04-FINAL.txt` (Ch. 2 block + minimal Ch. 3 USE tags).

---

*End CH02 TOC Audit Flow Lock.*
