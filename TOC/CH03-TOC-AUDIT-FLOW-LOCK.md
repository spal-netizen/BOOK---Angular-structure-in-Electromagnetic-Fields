# Chapter 3 TOC — Rigorous Flow Audit (Ch. 2 ↔ Ch. 3 ↔ Ch. 4)

**Status:** **LOCKED**  
**Lock date:** 2026-05-29  
**Authority:** Pre-drafting gate for Chapter 3; amends `TOC/volume-I-ch01-04-FINAL.txt` Ch. 3 block (+ minimal Ch. 4 USE back-links).  
**Subsection count:** **48** (unchanged — no structural inflation).

---

## 1. Audit objective

Verify that Chapter 3's TOC:

1. **Inherits** every Ch. 2 export listed in §2.11.3 without re-opening operator/Green/Sommerfeld HOME proofs.  
2. **Inherits** Ch. 1 angular, gauge, and measurement results by USE only.  
3. **Supplies** every representation construct Ch. 4 must USE (VSH, normalization, spectra, basis change).  
4. Preserves **171** subsection Volume I architecture and HOME/USE/DEFER discipline.

---

## 2. Chapter 2 → Chapter 3 inheritance map

| Ch. 2 export | Required Ch. 3 response | TOC action |
|--------------|-------------------------|------------|
| §2.1.1 function spaces | Radiative Hilbert closure | §3.1.1 `[USE SS2.1.1]` (retained) |
| §2.6.1 abstract spectral decomposition | Generalized eigenfunctions | **ADD** `[USE SS2.6.1]` on §3.1.3 |
| §2.8.2 mode orthogonality preview | Inner product / VSH orthogonality | **ADD** `[USE SS2.8.2]` on §3.1.2, §3.4.3 |
| §2.2.2 Helmholtz operator | Vector Helmholtz reduction | §3.3.1 `[USE SS2.2.2]` (retained) |
| §2.4 Sommerfeld / outgoing waves | Radial outgoing admissibility | §3.3.3 `[USE SS2.4]` (explicit) |
| §2.5.1 radiation integrals | Eigenfield expansion of radiated fields | §3.0.2 `[USE SS2.5.1]` (retained) |
| §2.5.3 flux / operator norms | Energy-flux normalization | **ADD** `[USE SS2.5.3]` on §3.5.1 |
| §2.6.2 rotational spectral degeneracy | SO(3) degeneracy on fields | **ADD** `[USE SS2.6.2]` on §3.2.3, §3.4.5 |
| §2.9.1 plane-wave angular spectrum | Angular spectra + basis | **ADD** `[USE SS2.9.1]` on §3.7.1, §3.8.1 |
| §2.9.4 far-field angular accessibility | Unbounded angular spectra | **ADD** `[USE SS2.9.4]` on §3.7.1 |

**Verdict:** Ch. 2 → Ch. 3 flow **complete** after amendments.

---

## 3. Chapter 1 → Chapter 3 inheritance map (direct USE)

| Ch. 1 HOME | Ch. 3 consumer | TOC action |
|------------|----------------|------------|
| §1.2.1 angular momentum directionality | **J** operator on fields | §3.2.1 (retained) |
| §1.2.2 phase / polarization topology | Phase singularities | **ADD** `[USE SS1.2.2]` on §3.7.4 |
| §1.3 rotations / SO(3) | Representations, Wigner | **ADD** `[USE SS1.3]` on §3.2.3; `[USE SS1.3.1]` on §3.2.4 |
| §1.4 gauge / helicity | Eigenfield interpretation | §3.9.1–§3.9.2 (retained) |
| §1.4.5 spin-orbit decomposition limits | OAM representation dependence | **ADD** `[USE SS1.4.5]` on §3.8.4 |
| §1.5.4 observables vs inferred | Representation artifacts | **ADD** `[USE SS1.5.4]` on §3.9.4 |

**Forbidden repeat in Ch. 3:** full Maxwell derivation, Sommerfeld proof, Green construction (`00-FORWARD-MAP.yaml`).

---

## 4. Chapter 3 → Chapter 4 supply map

| Ch. 4 need | Ch. 3 supplier | TOC action |
|------------|----------------|------------|
| §4.0.2 finite geometry constraint | Truncation / completeness loss | **ADD** `[USE SS3.6.2]` on §4.0.2 |
| §4.4.1 Fourier–angular duality | Plane-wave / angular spectrum | **ADD** `[USE SS3.8.1][USE SS2.9.1]` on §4.4.1 |
| §4.4.3 high-order angular decay | Truncation of modes | **ADD** `[USE SS3.6.2]` on §4.4.3 |
| §4.5.1 eigenfield expansions | VSH definitions | §4.5.1 `[USE SS3.4]` (retained) |
| §4.5.2 selection rules | Degeneracy / coupling | **ADD** `[USE SS3.4.5][USE SS3.2.3]` on §4.5.2 |
| §4.5.4 modal weights | Normalization choice | **ADD** `[USE SS3.5.4]` on §4.5.4 |
| §4.6.1 max angular order | Boundary quantization | **ADD** `[USE SS3.7.2]` on §4.6.1 |
| §4.6.3 high-order coupling decay | Density of states | **ADD** `[USE SS3.5.3]` on §4.6.3 |
| §4.7.4 localization vs resolution | Representation / symmetry breaking | **ADD** `[USE SS3.8.4][USE SS3.6.4]` on §4.7.4 |
| §4.10.1 max AM on aperture | Quantized angular spectra | **ADD** `[USE SS3.7.2][USE SS3.4]` on §4.10.1 |

**Verdict:** Ch. 3 **supplies** Ch. 4 realizability core after amendments.

---

## 5. Section-by-section ordering review

| Order | Section | Expert verdict |
|------:|---------|----------------|
| 3.0 | Introduction | Correct — maps Ch. 2 operators to representation viewpoint |
| 3.1 | Hilbert framework | Correct — before AM operators |
| 3.2 | **J** / SO(3) | Correct — before VSH construction |
| 3.3 | Vector Helmholtz / Debye | Correct — before §3.4 VSH |
| 3.4 | VSH definitions | Correct — **single HOME** for \(Y_\ell^m, M_{\ell m}, N_{\ell m}\) |
| 3.5 | Normalization | Correct — after VSH definitions |
| 3.6 | Completeness / symmetry breaking | Correct — before discrete/continuous spectra |
| 3.7 | Angular spectra types | Correct — after completeness framework |
| 3.8 | Basis changes | Correct — after spherical HOME; extends §2.9.1 |
| 3.9 | Gauge interpretation | Correct — closes Ch. 1 gauge thread |
| 3.10 | Examples | Correct — after theory core |
| 3.11 | Forward map | Correct — sole Ch. 3 `[DEFER]` block |

**No reordering required.**

---

## 6. Division of labour (Ch. 2 vs Ch. 3 vs Ch. 4)

| Topic | Owner |
|-------|-------|
| Radiation operators, Green, Sommerfeld | Ch. 2 |
| Abstract Fredholm / spectral skeleton | Ch. 2 §2.6 |
| **J** operator, Wigner, SO(3) on fields | Ch. 3 §3.2 |
| VSH / \(M_{\ell m}, N_{\ell m}\) **definitions** | Ch. 3 §3.4.1 |
| Plane-wave ↔ spherical **conversion matrices** | Ch. 3 §3.8.3 |
| Angular-spectrum **operator filter** | Ch. 2 §2.9 |
| Finite-support truncation / realizability | Ch. 4 |
| NR source null space **definition** | Ch. 2 §2.7 (Ch. 4 USE) |

---

## 7. HOME / USE / DEFER corrections applied

| Subsection | Amendment |
|------------|-----------|
| 3.0.1 | `[HOME]` — symmetry / operators / representations framing |
| 3.0.3 | narrative bridge (no TOC tag) |
| 3.1.2 | `[USE SS2.8.2]` added |
| 3.1.3 | `[USE SS2.6.1]` added |
| 3.2.3 | `[USE SS1.3][USE SS2.6.2]` added |
| 3.2.4 | `[USE SS1.3.1]` added |
| 3.2.5 | `[USE SS1.4.3][HOME]` confirmed |
| 3.3.3 | `[USE SS2.4]` explicit |
| 3.4.3 | `[USE SS2.8.2]` added |
| 3.4.4 | `[USE SS3.2.2][USE SS3.3.4]` added |
| 3.4.5 | `[USE SS2.6.2]` added |
| 3.5.1 | `[USE SS2.5.3]` added |
| 3.5.2 | `[USE SS3.1.3]` added |
| 3.6.1 | `[USE SS3.4.3]` added |
| 3.7.1 | `[USE SS2.9.1][USE SS2.9.4]` added |
| 3.7.2 | `[USE SS3.6.3]` added |
| 3.7.4 | `[USE SS1.2.2]` added |
| 3.8.1 | `[USE SS2.9.1]` added |
| 3.8.3 | `[USE SS3.4][USE SS3.8.1][USE SS3.8.2]` added |
| 3.8.4 | `[USE SS1.4.5]` added |
| 3.9.4 | `[USE SS1.5.4]` added |
| 3.11.1–3.11.3 | `[DEFER]` confirmed |

---

## 8. §3.11.3 bridge obligations (for drafting)

Export to Ch. 4 by reference:

1. VSH basis and completeness (§3.4).  
2. Normalization and density of states (§3.5).  
3. Truncation / symmetry-breaking taxonomy (§3.6).  
4. Discrete vs continuous angular indices (§3.7).  
5. Basis transformations and OAM representation caveats (§3.8–§3.9).

---

## 9. Sign-off

| Criterion | Result |
|-----------|--------|
| No missing Ch. 2 → Ch. 3 links | **PASS** |
| No missing Ch. 1 → Ch. 3 direct links | **PASS** |
| No missing Ch. 3 → Ch. 4 supplies | **PASS** |
| Subsection count preserved (48) | **PASS** |
| HOME/USE/DEFER discipline | **PASS** |
| Ready for future `GCHECK 3.0.1` | **YES** (after Ch. 2 complete) |

**Authoritative TOC updated in:** `TOC/volume-I-ch01-04-FINAL.txt` (Ch. 3 block + minimal Ch. 4 USE back-links).

---

*End CH03 TOC Audit Flow Lock.*
