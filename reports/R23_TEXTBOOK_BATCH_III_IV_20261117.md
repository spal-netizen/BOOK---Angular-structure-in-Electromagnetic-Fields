# R23 — Textbook baseline batch III–IV (partial II–V), 2026-11-17

**Named commit batch (suggested tag):** `chapter1-textbook-batch-III-IV-20261117`  
**Suggested commit message:** Restore classical textbook voice on A05B9CCE baseline: exterior uniqueness theorem, Beth multi-pass Fig. 1.25, dipole pattern Fig. 1.30, summary synthesis, bookkeeping/Route vocabulary purge.

## Delivered in this batch

| Audit tier | Item | Status |
|------------|------|--------|
| II B1 | `Theorem~\ref{thm:ch1.exterior-uniqueness}` + proof outline §1.1.3 | Done |
| III C1 | Beth-led opening para. 1 (flux balance wording) | Partial — §1.0 still carries benchmark depth |
| III C2 | Bookkeeping / ledger / Route A|B prose | Largely purged in `ch01.tex`; eq. label keys `*-ledger` retained |
| III E4 | §1.7 scientific synthesis | Done |
| IV F | Fig. 1.25 `\VolIPhysBethSchematic` multi-pass QWP/HWP/mirror | Done |
| IV F | Fig. 1.30 `D(\theta)=\tfrac32\sin^2\theta` on pattern | Done |

## PDF for author review

- `VOLUME_I_RELEASE/CHAPTER1_TEXTBOOK_BATCH_III_20261117.pdf` (primary batch artifact)
- Mirror: `VOLUME_I_RELEASE/CHAPTER1_TEXTBOOK_REVIEW_20261117.pdf`

Build: `latex\build-ch01-review.ps1`

## Not touched

- `latex/archive/ch01-monograph-overhaul-20261117.tex`

## Remaining (next batch suggestion: `chapter1-textbook-batch-V-prose-figures-20261118`)

- Full §1.0 Beth narrative compression (paragraphs 2–3)
- §1.1.2 Green-function singular-point expansion
- Figures 1.6, 1.20, 1.27, 1.28 table remainder
- Prose pass on §1.4–§1.6 modal caveats (without reintroducing monograph admissibility blocks)
- Exercise alignment grep after full Route label removal in main text