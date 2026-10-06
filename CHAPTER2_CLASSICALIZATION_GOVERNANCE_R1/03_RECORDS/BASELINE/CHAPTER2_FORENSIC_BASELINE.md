# Chapter 2 — Forensic Baseline (Stage 1)

**Recorded:** 2026-10-05  
**Stage:** 1 — reconnaissance only (no manuscript changes)

---

## A. Baseline PDF identity

| Field | Value |
|-------|--------|
| **Title** | Chapter 2 — Maxwell Operators and Radiation Operators |
| **File (author)** | `Volume-I-Author-Review_SPLIT 4  CHAPTERS/Volume-I-Author-Review-105-252.pdf` |
| **Immutable copy** | `CHAPTER2_CLASSICALIZATION_GOVERNANCE_R1/02_INPUT/Volume-I-Author-Review-105-252_BASELINE_IMMUTABLE.pdf` |
| **SHA-256** | `52C7066D9096D35E6EBBEC8E587BD64C30602BB86B8D218CE70FDD5E47A3B3BE` |
| **PDF page count** | **148** (split volume pages **105–252**) |
| **Approx. word count (PDF text)** | ~81,800 |

---

## B. Source identity

| Field | Value |
|-------|--------|
| **Primary source** | `latex/ch02.tex` (~13,617 lines) |
| **Volume build entry** | `latex/main.tex` → `\include{ch02}` |
| **Chapter label** | `\label{ch:02}` |
| **LaTeX `\label{eq:ch2.*}` count** | **438** |
| **LaTeX `\label{fig:ch2.*}` count** | **54** |
| **LaTeX `\label{tab:ch2.*}` count** | **0** |

**Alternate / non-authoritative trees (not used as baseline):**  
`Volume-I-Scholarly-Production/` (Chapter 1 only; no `ch02.tex`), `RECOVERY_LOCK_20260923/`.

---

## C. Build identity

| Item | Status |
|------|--------|
| **Declared build** | `latexmk -pdf main.tex` (from `latex/main.tex` header) |
| **`latex/main.pdf` in repo** | **Not present** at audit time |
| **PDF ↔ source reproducibility** | **Not established** in Stage 1 (no build executed) |
| **Preamble chain** | `latex/preamble.tex` → `macros.tex`, `vol-i-time-convention.tex`, `ch01-tikz-styles.tex`, `fig-macros.tex` |
| **Bibliography** | `latex/references.bib` (shared Volume I) |

---

## D. Section / subsection architecture (from PDF + source alignment)

**Sections (11 numbered blocks + introduction):**

| ID | Title |
|----|--------|
| 2.0 | Introduction |
| 2.0.1 | Radiation as a source-to-field operator |
| 2.0.2 | Maxwell equations in operator form |
| 2.0.3 | Admissibility and Maxwell export sequence |
| 2.1 | Function Spaces and Maxwell Operators |
| 2.2 | Time- and Frequency-Domain Maxwell Operators |
| 2.3 | Green Functions and Electromagnetic Inversion |
| 2.4 | Radiation Conditions and Uniqueness |
| 2.5 | Radiation Integrals and Source-to-Field Representations |
| 2.6 | Spectral Theory of Radiation Operators |
| 2.7 | Non-Radiating Sources and Null Spaces |
| 2.8 | Reciprocity and Radiative Coupling |
| 2.9 | Action of Radiation Operators on Angular Spectra |
| 2.10 | Examples (subsections 2.10.1–2.10.4) |
| 2.11 | Summary (subsections 2.11.1–2.11.3) |

Architecture matches between PDF text scan and `ch02.tex` `\section`/`\subsection` headers (no renumbering performed).

---

## E. Equation / figure / reference inventory (PDF text scan)

| Item | PDF scan | Notes |
|------|----------|--------|
| **Equation markers `(2.*)`** | **446** unique strings in PDF text | Lexicographic max string `2.99` **≠** highest numeric index; full numeric range requires structured parse (Stage 2 verification) |
| **Figures** | **2.0–2.18** detected in PDF captions | Source has **54** `fig:ch2` labels — caption numbering vs. label count **not reconciled** in Stage 1 |
| **Tables** | **0** detected in PDF text | Consistent with 0 `tab:ch2` labels in source |
| **Problems block** | Not identified as separate “Problems 1–N” list | **Examples** section 2.10 serves worked-example role |
| **Bibliography** | Shared Volume I back matter (not isolated in split PDF) | Chapter cites throughout; no separate Ch.2-only bib file |

Machine-readable extract: `ch2_pdf_extract.json`.

---

## F. Governance verification (Stage 1)

| Required item | Path | Status |
|---------------|------|--------|
| Constitution frozen | `CLASSICAL_MASTER_EDITORIAL_CONSTITUTION_FROZEN` | **MISSING** |
| Execution charter | `VOLUME_I_CLASSICALIZATION_EXECUTION_CHARTER_R1.md` | **MISSING** |
| Cursor rules | `.cursor/rules/book-consistency.mdc` | **PRESENT** (repo root) |
| Agents readme | `AGENTS_README.md` | **MISSING** |
| Acceptance standard | `CHAPTER_CLASSICALIZATION_ACCEPTANCE_STANDARD_R1.md` | **MISSING** |
| Ch.2 baseline PDF | See §A | **PRESENT** |
| Ch.2 source | `latex/ch02.tex` | **PRESENT** (single unambiguous primary file) |
| References | `latex/references.bib` | **PRESENT** |
| Ch.1 canonical | `ARCHIVE/CHAPTER1/.../Chapter1_Canonical_MICROR1_R3B.pdf` | **PRESENT** (benchmark only) |

---

## G. Production status

- **Classicalization:** Not started (Stage 1 only).  
- **Defect ledger:** Open candidates recorded separately.  
- **Manuscript modified in Stage 1:** **No.**
