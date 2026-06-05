# No-Recursion Audit Pass (Per Chapter)

Run this audit after drafting each chapter and again at volume freeze.

**GCHECK master (zero deviation):** `TOC/GCHECK-MASTER-CUMULATIVE.md` — read before every audit pass.

## Chapter completion log

| Chapter | Status | Audit date | Notes |
|---------|--------|------------|-------|
| 1 | **PASS — LOCKED** | 2026-05-29 | 32 subsections; TOC sign-off `CH01-TOC-SIGNOFF-LOCK.md`; manuscript complete |
| 2 | **TOC LOCKED** | 2026-05-29 | 45 subsections; `CH02-TOC-AUDIT-FLOW-LOCK.md`; ready for drafting |
| 3 | **TOC LOCKED** | 2026-05-29 | 48 subsections; `CH03-TOC-AUDIT-FLOW-LOCK.md`; scaffold synced |
| 4 | pending | — | — |

## Audit objectives

- detect repeated equation blocks,
- detect repeated claims stated as new,
- detect repeated narrative templates across adjacent subsections,
- enforce `HOME/USE` proof ownership.

## Chapter pass checklist

1. Verify every subsection tag against `HOME/USE` ownership in `THEOREM-HOME-MATRIX-19CH-ULTIMATE.md`.
2. Confirm no theorem proof appears outside its `HOME` chapter.
3. Confirm repeated equations are either referenced or explicitly marked as new limits/variants.
4. Confirm each subsection introduces one unique technical establishment sentence.
5. Confirm subsection closures are unique and not recycled sentence templates (forward links optional).
6. Confirm deferred concepts appear only in chapter synthesis/forward-map sections.
7. Confirm subsection opening paragraphs are not similarly framed across neighboring or sibling subsections.
8. Confirm subsection closing paragraphs are not similarly framed across neighboring or sibling subsections.
9. For Volume I, confirm each section has both an introductory framing paragraph and a summative framing paragraph.
10. Confirm every subsection reaches substantial mathematical depth (not narrative-only or equation-sketch-only).
11. Confirm all variables/symbols in equation blocks are explicitly defined at first appearance.
12. Confirm each major equation block has both mathematical-function explanation and physical interpretation.
13. Confirm equation-explanation sentence construction is not repetitively templated across sibling subsections.
14. Confirm chapter-wise equation numbering and reference numbering are strictly increasing and properly formatted.
15. Confirm each section was drafted in section-first order: introductory framing -> subsection sequence -> summative bridge.

## Recommended command checks (from project root)

```powershell
rg -n "\\\\begin\\{equation\\}|\\\\\\[" latex/ch*.tex
rg -n "we now prove|it follows that|therefore" latex/ch*.tex
rg -n "By Theorem|\\[USE|\\[HOME" TOC/TOC-master-19chapters-ULTIMATE-FINAL.txt
rg -n "CITATION NEEDED" latex/ch*.tex
```

## Escalation rule

If a recursive block is found:

- keep the `HOME` instance,
- convert all non-home instances to `USE` references,
- rewrite narrative to preserve local interpretation without re-derivation.
