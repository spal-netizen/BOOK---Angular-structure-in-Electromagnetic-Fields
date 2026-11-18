# R19 — Batch: M1 + §1.6–§1.8 de-template + §1.4.4–4.5 rhetoric

**Date:** 2026-11-17  
**User:** approved chain (all in one run)

## M1 build

| Step | Action | Status |
|------|--------|--------|
| Blocker | `fig-macros.tex` nested `\ifstrequal` runaway → `\@nameuse` dispatch map | ✅ Fixed |
| Blocker | TikZ `$\hat{\mathbf{x}}'$` prime parse at L2223 | ✅ `$\hat{\mathbf{x}}{}'$` |
| Blocker | Missing `\label{eq:ch1.ex61-admissibility-criterion}` | ✅ Alias on ex61 gate |
| Build | `latexmk -pdf main.tex` (Vol I) | ⏳ Re-run in flight after fixes |

**Note:** §1.8 = `ch01-problems.tex` (`sec:ch01.8`); wired via `\input{ch01-problems}` before chapter bibliography.

## §1.6 prose de-template

- Section opening: catalog of four cases → Maxwellian arithmetic ladder (no subsection menu).
- §1.6.1: block-label walk-through merged into continuous derivation prose.
- §1.6.2: deduplicated opening; fixed broken `ex62-zero-transport-result` sentence; repaired orphan “diagnostic statement”.
- §1.6.3: removed staged “solution proceeds / block” scaffolding → single gauge-reporting narrative.

## §1.7 prose de-template

- Results subsection: “may be collected without repeating” → single inventory framing.
- “Chapter closes when” → conditional report completeness.
- Closing bridge: bullet-list dogma → compact Maxwellian order (no duplicated “establishes” cadence).

## §1.8 (Problems)

- Opening framing paragraph (Ch.1-only deps; Ch.2+ marked forward).
- Included in `ch01.tex` build for section numbering.

## §1.4.4–4.5 rhetorical pass

- Removed bridge template “With gauge-invariant observable criteria…”.
- §1.4.4: Maxwell lead-in, channel law, operational acceptance phrasing varied; fixed duplicate “Operational walk-through / Operational admissibility”.
- §1.4.5: merged duplicate spin–orbit openings into one physics-first paragraph.

## §1.5 touch (batch collateral)

- “Measurement closes the loop” de-templated.
- “At chapter level” → “Direct-observable status in this chapter”.

## Sign-off

Structural + rhetorical batch complete per user approval. Confirm **M1 green** when `main.pdf` updates and `main.log` has no `!` fatals (undefined refs on pass 1 expected until bib reruns).