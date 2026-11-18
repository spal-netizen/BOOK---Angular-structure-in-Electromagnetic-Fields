# Senior EM Audit — Chapter 1 Status (post §1.2.4 GCHECK + B7)

**Date:** 2026-11-16  
**Canonical source:** `latex/ch01.tex`  
**Benchmark:** A05B9CCE / execution register Batches A–H  
**Verdict on “one complete run”:** **Not achievable in one agent turn.** Continue **batched** execution with register gates after each batch (see `CHAPTER1_A05B9CCE_OVERHAUL_EXECUTION_REGISTER.md`).

---

## Executive summary

| Domain | Readiness (1–5) | Notes |
|--------|-----------------|-------|
| Physics & notation (Batch A) | 4 | Abraham/Minkowski, σ_h split, Chu `z_n` largely fixed; occasional frequency narrative drift (300 MHz vs 1 GHz examples) |
| Proof closure (Batch B) | 3.5 | Uniqueness + Green bridge improved; §1.7 still carries formal defer equation blocks |
| Prose §1.0–§1.2 (Batch C–D) | 4 | Classical voice; **§1.2.4 HOME restored** this run |
| Prose §1.3–§1.7 (Batch E) | 3 | §1.7 synthesis improved; admissibility “chain” equations still process-heavy |
| Figures (Batch F) | 3 | Beth multi-pass, plane-wave, transport triad; **1.27/1.28/1.30** audit list still open |
| Problems (Batch G) | 4 | `ch01-problems.tex` aligned to regime HOME eqs |
| Bibliography (Batch H) | 3 | Abraham year / Harrington reissue pass not closed |

---

## Critical fix completed this run: §1.2.4 ownership

**Defect:** `\label{sec:ch01.2.4}` lived inside §1.6.4 (~L4055); regime table orphaned from Section 1.2; many `\ref{sec:ch01.2.4}` pointed at wrong anchor.

**Repair:**
- New **HOME** subsection after §1.2.3: reactive/radiative classification, `eq:ch1.regime-shell-power`, `eq:ch1.regime-reactive-index`, `eq:ch1.regime-transport-screen`, Fig. `fig:ch1.radial-field-zones`, Table `tab:ch1.regime-numeric-dipole`.
- Removed duplicate label/table block from gauge–reactive insert in §1.6.4; §1.6.4 **USE**s HOME by `\eqref` (no re-display of power/ratio definitions).
- §1.6 opening paragraph updated to list §1.2.4 in Section 1.2 roadmap.

---

## B7 — helicity σ figure sweep (partial → closed for Vol I library)

| Location | Change |
|----------|--------|
| `vol-i-physical-figure-library.tex` VolIPhysThreeRadiationConsequences | `σ` → `σ_h` |
| Same file VolIPhysHelicityPolarizationSplit | `σ` → `σ_h` |
| `σ_n` (surface normal) in same library | **Unchanged** (distinct symbol) |

**Remaining:** TikZ inside `ch01.tex` hand-drawn fragments (if any bare `σ=±1` in captions) — grep `latex/ch01*.tex` before Batch F sign-off.

---

## Priority findings (P1–P5)

### P1 — Structural / TOC concordance
- [x] §1.2.4 HOME placement (`volume-I-ch01-04-FINAL.txt`)
- [ ] §1.7: trim `eq:ch1.defer-*` / `eq:ch1.master-admissibility-chain` from student-facing prose → forward pointer only (Batch E4)
- [ ] Verify no duplicate equation labels after HOME move (rebuild `ch01.aux`)

### P2 — Scientific consistency
- [ ] Harmonize **300 MHz** two-shell narrative vs **1 GHz** tables in §1.2.3–§1.2.4 vs §1.6.4 (audit A7)
- [ ] `abraham1910` bib year → 1909 (Batch H)
- [ ] Dipole multipole radial template scope (Batch A6) — confirm caption states electric-dipole class

### P3 — Prose & voice
- [x] Remove “laboratory error” template (§1.1.3 uniqueness prose)
- [ ] Grep gate: `bookkeeping`, `ledger`, `gate` as metaphor, `Route A/B`, `CH01-NARR`, `HARRINGTON-OPEN`
- [ ] §1.6.4 worked solution: reduce “five steps” staging toward continuous argument (Batch E3)

### P4 — Figures (Audit §8)
- [x] `fig:ch1.radial-field-zones` (new with §1.2.4)
- [x] Beth multi-pass schematic (prior batch)
- [ ] Figs 1.27, 1.28, 1.30 per register Batch F
- [ ] In-body interpretation pass for all §1.6 figures

### P5 — Build & regression
- [ ] Full or Ch.1-only `pdflatex` ×2 + unresolved refs report
- [ ] Update `TOC/NO-RECURSION-AUDIT-PASS-ULTIMATE.md` Ch.1 checkbox for §1.2.4 HOME

---

## Recommended batch chain (next 4 Cursor sessions)

1. **Batch F (remainder)** — Figs 1.27, 1.28, 1.30 + caption/prose pairing; σ grep on `ch01-tikz-styles` / hand-drawn figs.
2. **Batch E (finish)** — §1.7 scientific synthesis only; remove defer equation displays; §1.6.4 prose de-template.
3. **Batch A7 + H** — frequency consistency grep; Abraham/Harrington/Chu bib.
4. **Batch B exit** — uniqueness + stress-balance read-through; mark `% PROOF: AUTHOR REVIEW` where needed.

---

## §1.2.4 GCHECK — author approval queue

**§1.2.3:** Approved (do not reopen).  
**§1.2.4:** Ready for line-by-line author approval — new HOME subsection ~L2052–L2165 in `latex/ch01.tex`.

---

## Files touched this run

- `latex/ch01.tex` — §1.2.4 HOME, §1.6.4 dedup, uniqueness vocabulary, Section 1.2 opener
- `latex/ch01-problems.tex` — regime equation refs
- `latex/vol-i-physical-figure-library.tex` — B7 σ_h labels

**Report:** `reports/R15_BATCH_GCHECK_01_2_4_B7.md` (optional micro-changelog) — content subsumed here.