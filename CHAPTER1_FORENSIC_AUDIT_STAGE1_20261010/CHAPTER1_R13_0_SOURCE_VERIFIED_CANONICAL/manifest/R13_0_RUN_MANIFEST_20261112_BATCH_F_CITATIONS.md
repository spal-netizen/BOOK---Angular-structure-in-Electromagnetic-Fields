# R13.0 Batch F — citation repair (2026-11-12)

## Root cause

`\usepackage{chapterbib}` in `build_package/preamble.tex` with `\input{ch01}` (not `\include`) left `main-ch01-only.aux` without `\citation{...}` records, so in-text cites rendered as `[?]` despite a populated `.bbl`.

## Fix

Removed `chapterbib` from standalone Chapter 1 `preamble.tex`; clean `latexmk -g` rebuild.

## Verification

- PDF scan: **0** `[?]` markers (59 pages).
- `validation/ch01_citation_pdf_check.py` — PASS
- `validation/CH01_CITATION_AUDIT.csv` — 1412 cite keys, **0** missing from `references.bib`

## Hashes (post-fix; record after commit)

See `R13_0_FINAL_SHA256SUMS.txt`.
