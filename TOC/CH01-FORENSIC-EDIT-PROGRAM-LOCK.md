# Chapter 1 — Forensic Architectural Edit Program

**Status:** **AUTHORIZED** — 2026-06-06 (post physical review)  
**Scope:** `latex/ch01.tex` unlock for concept-by-concept revision; Ch. 2 §2.0 alignment after Ch. 1 passes approved  
**Ch. 3–4:** **HOLD** until Ch. 1 passes complete and author re-locks  

---

## Edit order (concept-by-concept, not section-by-section)

| Pass | Concept | Target | Status |
|------|---------|--------|--------|
| **1** | Grand Problem Statement | §1.0 opening (2–3 pp) | **COMPLETE** |
| **2** | Real thesis early (finite source → accessibility → realizability) | §1.0 motivation seeds | **COMPLETE** |
| **3** | Demote temporary machinery | §1.0.1 | **COMPLETE** |
| **4** | Physics before formalism | Ch. 1 body | **COMPLETE** |
| **5** | Literature positioning | §1.0 | **COMPLETE** |
| **6** | Degrees of freedom seed | §1.0 | **COMPLETE** |
| **7** | Three-level hierarchy motif | §1.0 + `fig:ch1.three-level-hierarchy` | **COMPLETE** |
| **N** | Vector notation uniformity (bold phasors; no underline clash) | `macros.tex`, `00-NOTATION.md`, all chapters | **IN PROGRESS** |

---

## Central thesis (author-approved destination)

Volume I develops a **theory of electromagnetic realizability and angular accessibility**:

> Which angular structures are fundamental Maxwell field properties, which are representation-dependent, which finite sources can realize, and which finite measurements can observe?

Chapter 4 is the anticipated originality anchor (realizability, truncation, effective angular dimension).

---

## Notation pass

**Issue:** `\underline{\mathbf{E}}` places a phasor marker *under* the vector, conflicting with classical EM typography (Jackson, Harrington, Stratton: **bold** spatial vectors).

**Fix:** `\E`, `\H`, `\Jimp` → bold without underline; harmonic `\exp(-j\omega t)` convention documented in `00-NOTATION.md` and first Ch. 1 appearance.

---

## Re-lock criteria

- Author approves Pass 1–7 + notation in compiled PDF  
- `00-FORWARD-MAP.yaml` Ch. 1 status updated  
- No-recursion re-audit for Ch. 1  
- Ch. 2 §2.0 bridge aligned (single pass)  

---

*End edit program lock.*
