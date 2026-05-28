# Start Here — Volume I (Fresh Session)

**Baseline locked:** 2026-05-24  

## Three files to open

1. `LOCK-MANIFEST.md` — what is frozen  
2. `TOC/TOC-master-19chapters-ULTIMATE-V3-forward-only.txt` — official full-book master TOC  
3. `latex/ch01.tex` — where to write it (`\label{sec:ch101}` first)  

## First task

**§1.0.1 Scope and role of Chapter 1** `[HOME]`

## Rules (one line each)

- Define once (`[HOME]`); later sections cite (`[USE SS…]`)  
- No Maxwell re-derivation after §1.1.1  
- Examples need problem + figure + caption + all steps  
- Enforce 2026-05-27 objective lock in `LOCK-MANIFEST.md` (continuous monograph flow, zero recursion, no template prose)
- Enforce 2026-05-27 equation pedagogy lock in `LOCK-MANIFEST.md` (define all symbols; operand-level -> full-equation -> physical implication explanation; unique framing)
- Enforce 2026-05-27 equation-numbering lock in `LOCK-MANIFEST.md` (major equations only; no renumbered re-expression in later subsections)
- Enforce 2026-05-27 citation lock in `LOCK-MANIFEST.md` (claim-local placement; pioneer/original + proven modern sources only)
- Enforce 2026-05-28 reader-clarity lock in `LOCK-MANIFEST.md` (deeper foundational narration, richer intermediate math steps, figure density for clarity, no architecture-centric/title-head prose justification)

## Locked governance for all drafting

- Theorem ownership map: `TOC/THEOREM-HOME-MATRIX-19CH-ULTIMATE.md`
- Subsection contract: `TOC/SUBSECTION-DRAFTING-CONTRACT-ULTIMATE.md`
- Citation contract: `TOC/CITATION-CONTRACT-ULTIMATE.md`
- No-recursion audit pass: `TOC/NO-RECURSION-AUDIT-PASS-ULTIMATE.md`
- Model workflow lock: `MODEL-WORKFLOW-LOCKED.md`
- Chapter 1 controlled depth-expansion lock: `TOC/CH01-CONTROLLED-DEPTH-EXPANSION-PLAN.md`

Full detail: `LOCK-MANIFEST.md` | `00-NOTATION.md` | `.cursor/rules/book-consistency.mdc`

## Quick drafting trigger

Use this one-line command before any new subsection draft:

`GCHECK <subsection-id>`

Example:

`GCHECK 1.3.3`

Meaning (expanded automatically): apply the active cumulative GCHECK set: read the five core governance files; draft strictly forward with line-by-line approval; enforce Version A tone; enforce zero recursion/repetition with HOME/USE inheritance only; keep section-first structure (subsection bridge optional); deliver dense foundational math+physics with explicit symbol definitions and intermediate steps; explain major equations at term-level/full-equation/physical levels; place robust claim-local citations with pioneering + validated modern sources and chapter-wise numbering; use chapter-wise numbered conceptual schematic figures with label+caption+in-body explanation when readability benefits; enforce prose bans on architecture-centric justification and title-head metacommentary; target 3-5 pages per subsection; restart controlled redrafting from Section 1.0 onward.
