# Chapter 1 — Audit coverage & must-steps to classical masterpiece

**Date:** 2026-11-16  
**Locks:** §1.2.3, §1.2.4, §1.3 **author-approved**

---

## Honest answer: full paragraph/subsection audit?

**No.** A line-by-line GCHECK of **all 32 subsections** has **not** been completed. Work to date is **targeted-batch + structural forensics** (A05B9CCE register), not a closed audit of every paragraph.

| Block | GCHECK / edit depth | Status |
|--------|---------------------|--------|
| §1.0–§1.1 | Batches A–C; §1.1.3, §1.1.4 passes | **Partial** — vocabulary grep not fully green |
| §1.2 | §1.2.3–§1.2.4 **approved**; §1.2.0–§1.2.2 dedup/prose | **Partial** |
| §1.3 | **Approved** (section header, active/passive fig, covariance eqs) | **Locked** |
| §1.4–§1.5 | Batch D/E touches; not full subsection GCHECK | **Partial** |
| §1.6 | Figs 1.27/1.28/1.30; 300 MHz shell alignment (incl. Chu) | **Partial** — §1.6 prose de-template open |
| §1.7 | Synthesis lightened; defer eqs removed from display | **Partial** |
| §1.8 / problems | `ch01-problems.tex` pass | **Good**; spot-check vs theorems |
| Figures 1.1–1.30 | Priority audit list + R16 inserts | **Partial** — §8 remainder not all visually signed |
| Bib / notation | A7+H partial (`abraham1909`, Harrington note, σ_h) | **Partial** |

**Conclusion:** The chapter is **materially improved** and **structurally sounder** (notably §1.2.4 HOME, §1.3, regime figures). It is **not** yet certifiable as “every paragraph audited and edited” without the must-steps below.

---

## Must-steps (non-optional for timeless monograph standard)

Execute **in order**; each gate ends with grep + PDF spot-check + your subsection approval where marked.

### M1 — Mechanical closure (zero silent regressions)
1. **Full `latexmk` ×2** on `latex/main.tex`; log gate: no undefined `\ref`/`eqref` on Ch.1 labels; no TikZ fatal errors.
2. **Duplicate-label scan** on `ch01.tex` + `ch01.aux`.
3. **Frequency narrative:** single **300 MHz** anchor for dipole tables, §1.6.4 two-shell + Chu (completed this pass).

### M2 — Scientific integrity (Batch B exit)
1. Uniqueness §1.1.3 — author `% PROOF: AUTHOR REVIEW` only where needed.
2. No exercise/modal law beyond proved Ch.1 scope (`ch01-problems.tex` re-grep).
3. Dipole radial template scoped to electric dipole (A6).

### M3 — Prose monograph pass (Batch C–E completion)
1. **Every subsection** §1.0.1 through §1.7: one GCHECK each (governance files + `SUBSECTION-DRAFTING-CONTRACT`).
2. **Vocabulary gate** on `ch01.tex`: purge forbidden tokens (process/gate/ledger/bookkeeping in body).
3. **§1.6 worked blocks:** replace staged “five steps” scaffolding with continuous classical argument where prose still reads like a worksheet.
4. **§1.4–§1.5:** gauge/helicity/measurement — one fully developed example each; no disclaimer stacks.

### M4 — Figure integrity (Batch F completion)
1. Visual audit **all Figs 1.1–1.30** at print scale; caption + in-body interpretation for each.
2. Merge/redundancy per audit (1.17 / 1.29 vs radial zones) with stated regime distinction.

### M5 — Forward-only & inheritance (Ch.1 lock)
1. Run `TOC/NO-RECURSION-AUDIT-PASS-ULTIMATE.md` for Ch.1 only.
2. §1.7.2 inheritance **prose only** — no defer equation dumps.
3. Update `TOC/CH01-MANUSCRIPT-SIGNOFF-LOCK.md` when M1–M4 green.

### M6 — Bibliography (Batch H)
1. Primary cites: Abraham 1909, Chu TR-64 vs journal policy, Harrington 1961/2001.
2. Point-of-claim citation pass on §1.6.4 Chu block and stress-history sentences.

---

## Recommended next Cursor batch (after your approval)

1. **§1.4 GCHECK** (gauge/helicity HOME discipline) — highest risk for OAM/hype without gauge caveats.  
2. **§1.5 GCHECK** (Beth / measurement closure).  
3. **M3 vocabulary grep + fix sweep** across full `ch01.tex`.  
4. **M1 rebuild** + author PDF sign-off on §1.6.4 Chu paragraph after 300 MHz alignment.

---

## This pass (user request)

- §1.6.4 **Chu + illustrative shells** aligned to **$f=300\,\mathrm{MHz}$**, $kr_1=0.1\pi$, $kr_2=10\pi$, $\lambda_0/4$ dipole; removed $kr=0.5/5$ and $Q_{\mathrm{LB}}\gtrsim 240$ inconsistency.