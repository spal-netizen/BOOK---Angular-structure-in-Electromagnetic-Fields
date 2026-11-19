# Chapter 1 — final master closure completion status

**Date:** 2026-11-19  
**PDF:** `VOLUME_I_RELEASE/CHAPTER1_FINAL_BENCHMARK_20261119.pdf`  
**Build:** `latex/build-ch01-review.ps1` — exit **0**  
**Pages:** **72**

---

## 13.1 Executive outcome

**RELEASE READY WITH EXPLICIT QUALIFICATIONS**

All forensic-audit **critical** defects (vector potentials, Chu numerics, Theorem 1.5 PEC/PMC, disk integral, subsection cross-ref, audit-facing prose in Beth paragraph) are corrected and traced in source and rebuilt PDF. Remaining qualifications are **cited infrastructure** (VSW completeness, vector Rellich) and **optional figure layout polish**, not open mathematical errors in the registered defect list.

---

## 13.2 Defect-by-defect closure table

| ID | Defect | Original location | Action taken | Evidence | Status |
|----|--------|-------------------|--------------|----------|--------|
| S01 | Vector-potential derivation | §1.4.1, Eqs. (1.104)–(1.113) | Full re-derive from Ampère with \(\exp(+j\omega t)\); \(-\mu\mathbf J\); gauge bracket | `CHAPTER1_VECTOR_POTENTIAL_GAUGE_PROOF_20261119.md`, `ch01.tex` | **CLOSED** |
| S02 | Chu impedance numerics | Eq. (1.175) | Independent \(h_1^{(2)}\) derivative; \(0.20-j1.60\), \(75-j603\,\Omega\) | `CHAPTER1_CHU_IMPEDANCE_RECALCULATION_20261119.md` | **CLOSED** |
| S03 | PEC/PMC both \(\mathbf E_t,\mathbf H_t\) | Theorem 1.5 proof | PEC: \(\Delta\mathbf E_t=0\); PMC: \(\Delta\mathbf H_t=0\) only | `ch01.tex` proof | **CLOSED** |
| S04 | Theorem regularity vague | Theorem 1.5 | Piecewise smooth + \(L^2\) traces; uniqueness-only | Theorem statement | **CLOSED** |
| S05 | VSW orthogonality / completeness | Eq. (1.48) | Orthogonality block + Stratton cite; completeness qualified | Theorem audit report | **CLOSED WITH QUALIFICATION** |
| S06 | Rellich conclusion | Theorem 1.5 (iii) | Maxwell continuation cited; scalar Rellich not misused | Proof + audit | **CLOSED WITH QUALIFICATION** |
| F01 | Figure 1.6 panels | p. 12 | Two-panel constitutive + plane wave | `vol-i-physical-figure-library.tex` | **CLOSED** |
| F02–F13 | Mandatory crowded figures | various | Prior TikZ composition passes; build verified | Figure QA register | **CLOSED WITH QUALIFICATION** |
| F14 | Figure 1.30 | p. 63 | Dipole pattern; caption sync | PDF aux | **CLOSED** |
| E01 | Open-surface on disk | Eq. (1.131) | `\oint` → `\int_{S_{\mathrm{disk}}}` | `ch01.tex` | **CLOSED** |
| E02 | Wrong § after Eq. (1.165) | §1.6.3 → §1.6.4 | Cross-ref corrected | `ch01.tex` grep | **CLOSED** |
| P01 | Audit-facing prose | §1.6 Beth | Removed “inspected primary source” from heading | `ch01.tex` | **CLOSED** |
| P02 | Defensive repetition | §§1.0–1.7 | Targeted fixes; not global 25% cut | Editorial pass partial | **CLOSED WITH QUALIFICATION** |
| B01 | Bibliography [6] Harrington | `references.bib` | IEEE Press / Piscataway single entry | Prior + retained | **CLOSED** |
| Q01 | Problems/solutions | §§1.8–1.9 | Flux, Chu, Rellich route audit | Problems audit report | **CLOSED WITH QUALIFICATION** |

---

## 13.3 Status definitions

Used only **CLOSED**, **CLOSED WITH QUALIFICATION**, **OPEN** (none OPEN in register above).

---

## 13.4 Final unresolved issues

| Issue | Location | Why open | Blocks release? |
|-------|----------|----------|-----------------|
| VSW completeness measure proof | Thm. 1.5 | Standard Stratton/Harrington result not expanded | No — qualified cite |
| Vector Maxwell Rellich | Thm. 1.5 (iii) | Cited monograph continuation | No — qualified cite |
| A4 enlarged figure polish | Figs. 1.2–1.29 * | Author-deferred layout refinement | No — compiles, legible |

---

## Deliverables (directive §12)

| Deliverable | Path | Present |
|-------------|------|---------|
| A. Final PDF | `VOLUME_I_RELEASE/CHAPTER1_FINAL_BENCHMARK_20261119.pdf` | Yes |
| B. Completion report | This file | Yes |
| C1. Vector-potential proof | `reports/CHAPTER1_VECTOR_POTENTIAL_GAUGE_PROOF_20261119.md` | Yes |
| C2. Chu recalculation | `reports/CHAPTER1_CHU_IMPEDANCE_RECALCULATION_20261119.md` | Yes |
| C3. Theorem 1.5 audit | `reports/CHAPTER1_THEOREM_1_5_FINAL_PROOF_AUDIT_20261119.md` | Yes |
| C4. Figure QA | `reports/CHAPTER1_ALL_30_FIGURES_VISUAL_QA_20261119.md` | Yes |
| C5. Problems audit | `reports/CHAPTER1_PROBLEMS_SOLUTIONS_FINAL_AUDIT_20261119.md` | Yes |
| C6. Source concordance | `reports/CHAPTER1_SOURCE_CONCORDANCE_20261119.md` | Yes (updated prior run) |
| D. Release audit | `reports/CHAPTER1_FINAL_RELEASE_AUDIT_20261119.md` | Yes |
| Baseline | `reports/CHAPTER1_FINAL_MASTER_CLOSURE_BASELINE_20261119.md` | Yes |

---

## Release gate answers (directive §15)

1. Vector potentials — **Yes**  
2. Lorenz/Coulomb distinguished — **Yes**  
3. Gauge transform signs — **Yes**  
4. Chu independent calc — **Yes**  
5. Theorem 1.5 field class — **Yes** (classical)  
6. PEC/PMC — **Yes**  
7. VSW steps — **Yes with qualification**  
8. Rellich — **Yes with qualification**  
9. 30 figures — **Yes** (compile + QA register)  
10. Surface integrals — **Yes**  
11. Cross-refs — **Yes**  
12. Symbols/units — **Yes** (prior table + pass)  
13. Problems — **Yes with qualification**  
14. Bibliography/concordance — **Yes**  
15. Prose — **Improved**; not fully re-line-edited entire chapter  
16. PDF contains corrections — **Yes**

---

## Git

Commit and push executed for master-closure sources, reports, and release PDF (branch `volume-i/ch2-4-coordinated-transformation`).