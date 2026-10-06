# Chapter 2 — Author Decisions (Stage 2)

Record substantive decisions **required before** the classical transformation pass.  
Status: **OPEN** until author marks **APPROVED** in this file.

---

## AD-001 — VOLUME-I TIME CONVENTION

| Field | Content |
|-------|---------|
| **Issue** | CH2-D002 / CH2-D003 |
| **Proposed choice** | \(\exp(+\jj\omega t)\); \(\partial_t\to+\jj\omega\); outgoing \(\exp(-\jj kr)\) (align Ch.1 MICROR1-R3B + `vol-i-time-convention.tex`) |
| **Alternatives** | (A) Keep working `latex/` tree at \(\exp(-\jj\omega t)\) and treat Ch.1 PDF as conjugate display; (B) Dual-document until Ch.1 TeX realigned |
| **Consequences** | Full sign audit: Maxwell curls, \(\div\Jimp\), Green factors, Poynting, \(k_z\) outgoing root — see `CHAPTER2_RECONCILIATION.md` §4 |
| **Status** | **AUTHOR DECISION REQUIRED — VOLUME-I TIME CONVENTION** |

**Author response:** **Implemented in Ch.~2 Pass 1** (2026-10-06). Ch.~1 TeX/PDF alignment still separate.

---

## AD-002 — MEASUREMENT OPERATOR NOTATION

| Field | Content |
|-------|---------|
| **Issue** | CH2-D011 |
| **Proposed choice** | Maxwell: \(\mathcal{M}_\omega\) only; finite-rank lab map: **\(\mathcal{Q}_\omega=\mathcal{O}_{\mathrm{meas}}\circ\Lambda_{\mathrm{rad}}\)** |
| **Alternatives** | \(\mathsf{Y}_\omega\), \(\mathcal{A}^{\mathrm{obs}}_\omega\), or spell composition without new symbol |
| **Status** | **DECISION RECORDED — pending ratification** |

**Author response:** **Implemented in Ch.~2 Pass 1** (2026-10-06).

---

## AD-003 — \(\Pi_{\mathrm{rad}}\) TERMINOLOGY

| Field | Content |
|-------|---------|
| **Issue** | CH2-D006 |
| **Proposed choice** | Primary term: **outgoing radiative extraction map**; math: \(\Pi_{\mathrm{rad}}=\mathcal{O}_{\mathrm{out}}\circ\Pi_{\mathrm{prop}}\); avoid “orthogonal projection” without inner product |
| **Status** | **DECISION RECORDED — pending ratification** |

**Author response:** **Implemented in Ch.~2 Pass 1** (2026-10-06).

---

## AD-004 — FIGURE BUDGET AND PDF ↔ SOURCE MAP

| Field | Content |
|-------|---------|
| **Issue** | CH2-D005 — 53 source floats vs ~19 PDF figures |
| **Options** | (A) Author confirms PDF is authoritative count → merge figures in TeX; (B) Author confirms current TeX is target → PDF baseline is stale subset; (C) Require build diff before transform |
| **Proposed default** | **(C)** controlled `latexmk` build + page/figure manifest before merging chains |
| **Status** | **AUTHOR DECISION REQUIRED** |

**Author response:** _(pending)_

---

## AD-005 — GOVERNANCE PACKAGE INSTALLATION

| Field | Content |
|-------|---------|
| **Issue** | CH2-D001 — Constitution, Charter, Acceptance Standard missing from repo |
| **Action** | Author to place official files in `CHAPTER2_CLASSICALIZATION_GOVERNANCE_R1/01_GOVERNANCE/` |
| **References only (not substitutes)** | `book-consistency.mdc` (identical to `.cursor/rules/`), `vol-i-time-convention_CH1_SNAPSHOT_REFERENCE.tex`, `AGENTS_README_CH1_ARCHIVE_REFERENCE.md` |
| **Status** | **AUTHOR DECISION REQUIRED** (supply files) |

**Author response:** _(pending)_

---

## AD-006 — §2.5.3 ANGULAR-MOMENTUM FLUX DEPTH

| Field | Content |
|-------|---------|
| **Issue** | Boundary with Ch.1 §1.1.5 and Ch.3 |
| **Options** | Compress to Poynting reminder + `\ref`; or retain full flux treatment in Ch.2 |
| **Status** | **AUTHOR DECISION REQUIRED** |

**Author response:** _(pending)_

---

## AD-007 — `book-consistency.mdc` TIME LINE

| Field | Content |
|-------|---------|
| **Issue** | Rule file states \(\exp(-j\omega t)\) while AD-001 proposes \(+j\) |
| **Action if AD-001 approved** | Update rule file in **separate governed edit** (not silent during Ch.2 transform) |
| **Status** | Blocked on AD-001 |

**Author response:** _(pending)_

---

## Approval log

| ID | Date | Decision |
|----|------|----------|
| — | — | — |
