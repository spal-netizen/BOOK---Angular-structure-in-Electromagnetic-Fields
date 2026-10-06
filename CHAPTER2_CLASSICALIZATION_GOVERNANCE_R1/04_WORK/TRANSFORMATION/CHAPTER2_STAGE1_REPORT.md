# Chapter 2 — Stage 1 Executive Report

**Date:** 2026-10-05  
**Command:** CHAPTER 2 — STAGE 1 (forensic baseline only)  
**Manuscript modified:** **No**

---

## A. Baseline identity (FACT)

| Item | Value |
|------|--------|
| PDF | `Volume-I-Author-Review_SPLIT 4  CHAPTERS/Volume-I-Author-Review-105-252.pdf` |
| Immutable copy | `CHAPTER2_CLASSICALIZATION_GOVERNANCE_R1/02_INPUT/Volume-I-Author-Review-105-252_BASELINE_IMMUTABLE.pdf` |
| SHA-256 | `52C7066D9096D35E6EBBEC8E587BD64C30602BB86B8D218CE70FDD5E47A3B3BE` |
| Title | Maxwell Operators and Radiation Operators |
| PDF pages | 148 (volume pp. 105–252) |

## B. Source identity (FACT)

| Item | Value |
|------|--------|
| Primary TeX | `latex/ch02.tex` (~13.6k lines) |
| Build root | `latex/main.tex` (`\include{ch02}`) |
| Alternate Ch.2 source | **None identified** |

## C. Counts (FACT / scan limits)

| Metric | Value |
|--------|--------|
| `\label{eq:ch2.*}` | 438 |
| `\label{fig:ch2.*}` | 54 |
| Tables | 0 |
| PDF equation strings `(2.*)` | 446 unique (lexicographic max `2.99` — not numeric cap) |
| PDF figure numbers | 2.0–2.18 |
| Problems environment | None |
| `\cite` invocations | ~2850 |

## D. Section architecture (FACT)

§2.0 (+ 2.0.1–2.0.3) → §2.1–§2.9 (32 subsections) → §2.10 Examples (4) → §2.11 Summary (3).  
Full table: `03_RECORDS/BASELINE/CHAPTER2_FORENSIC_BASELINE.md` and `CHAPTER2_CONTENT_INVENTORY.md`.

## E. Major scientific domains (FACT)

Maxwell operators → function spaces → time/frequency → Green inversion → radiation uniqueness → radiation integrals → spectral theory → null spaces → reciprocity → angular spectrum → examples → forward summary.

## F. Major preserved contributions (RECOMMENDATION to later stages)

Operator chain \(\mathcal{S}_\omega\), \(\Pi_{\mathrm{rad}}\), \(\mathcal{R}_\omega\); outgoing selection; NR/null-space theory; reciprocity; angular-spectrum action; measurement-rank accessibility thesis; 54 schematic figures.  
Ledger: `CHAPTER2_PRESERVATION_LEDGER.md`.

## G. Major suspected scientific defects (SUSPECTED ISSUE)

1. **CH2-D002** — Volume-I time-convention authority split (frozen Ch.1 +j vs `latex/` −j vs archive `vol-i-time-convention.tex`).  
2. **CH2-D006–D007** — \(\Pi_{\mathrm{rad}}\) idempotency and Maxwell/radiation operator domains not verified.  
3. **CH2-D011** — \(\mathcal{M}_\omega\) notation collision (Maxwell vs measurement).  
4. Green/sign/outgoing normalization — audit started (§13.3), not closed.

Full list: `CHAPTER2_DEFECT_LEDGER.md` (all **OPEN**).

## H. Major notation issues (SUSPECTED ISSUE)

Time-factor sign across Volume I artifacts; \(\mathcal{M}_\omega\) overload; \(\Pi_{\mathrm{rad}}\) semantic mix (projection vs selector).  
Map: `CHAPTER2_NOTATION_MAP.md`.

## I. Major repetition issues (SUSPECTED ISSUE)

Compact-range vignette + Stratton/Harrington paragraphs recur in §2.0 / §2.0.1; multiple operator-chain figures.  
Classify in Stage 2 (NECESSARY RECALL vs REDUNDANT).

## J. Classicalization opportunities (RECOMMENDATION — not executed)

Replace `\begin{physicalvignette}` / `% PHYSICAL-*` scaffolding with classical monograph voice; condense procedural “measurement chain” phrasing where physics already clear; deepen physical interpretation at operator definitions **after** convention reconciliation.

## K. Possible Ch.3/4 leakage (SUSPECTED ISSUE)

VSH, SO(3), full harmonic normalization, deep angular-momentum operator material — **CH3-HOME** / **SHARED-INHERITANCE**; retain pointers, do not expand in Ch.2 classicalization without author architecture decision.

## L. Figure opportunities (RECOMMENDATION)

Preserve all 54 labels; Stage 2 build must map labels → PDF Fig. 2.0–2.18 (CH2-D005). No redraw in Stage 1.

## M. Historical issues (FACT)

Dense inline citations; repeated historical opener — see `CHAPTER2_HISTORY_MAP.md`. No invented references in Stage 1.

## N. Unresolved author decisions (AUTHOR DECISION REQUIRED)

1. Install missing governance package (Constitution, Charter, Acceptance Standard, AGENTS_README).  
2. **Single authoritative time convention** for Volume I classicalization (MICROR1 freeze vs `latex/` tree).  
3. Boundary disposition of VSH/SO(3)/angular-momentum material overlapping Ch.3.  
4. Accept or split `\mathcal{M}_\omega` notation.

## O. Build/source integrity (FACT + SUSPECTED ISSUE)

- Source closure documented: `CHAPTER2_SOURCE_CLOSURE.md`.  
- **PDF reproducibility not demonstrated** (no `latex/main.pdf`; no build run) — CH2-D004.

## P. Recommended next stage (RECOMMENDATION)

**Stage 2 — controlled architecture / reconciliation prep** (author command only), in order:

1. Place official governance package; resolve hierarchy conflicts explicitly.  
2. Author decision on time convention; then operator/Green sign audit against that lock.  
3. Controlled `latexmk` build + page/figure/equation map vs baseline PDF.  
4. Expand defect ledger §13.1–13.8 analyses without manuscript edits until transformation authorized.

---

## Stage 1 completion (FACT)

All required baseline records under `03_RECORDS/BASELINE/` are present.  
**No manuscript edits. No classicalization. STOP per command §28.**

## Record index

- `CHAPTER2_FORENSIC_BASELINE.md`  
- `CHAPTER2_CONTENT_INVENTORY.md`  
- `CHAPTER2_PRESERVATION_LEDGER.md`  
- `CHAPTER2_DEFECT_LEDGER.md`  
- `CHAPTER2_NOTATION_MAP.md`  
- `CHAPTER2_HISTORY_MAP.md`  
- `CHAPTER2_FIGURE_AUDIT.md`  
- `CHAPTER2_SOURCE_CLOSURE.md`  
- `CHAPTER2_BUILD_FORENSICS.md`  
- `01_GOVERNANCE/GOVERNANCE_PACKAGE_GAP_REPORT.md`
