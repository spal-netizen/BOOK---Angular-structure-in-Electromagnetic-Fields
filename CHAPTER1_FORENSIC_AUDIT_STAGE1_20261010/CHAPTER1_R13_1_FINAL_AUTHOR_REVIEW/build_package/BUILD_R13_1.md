# Build R13.1 — Chapter 1 standalone

```text
cd build_package
latexmk -g -pdf -interaction=nonstopmode main-ch01-only.tex
```

**Output:** `main-ch01-only.pdf` → copy to `../pdf/CHAPTER1_R13_1_FINAL_AUTHOR_REVIEW.pdf`

**Validation:** from `../validation/` run all `ch01_*.py` scripts.

**Dependencies:** `preamble.tex`, `ch01.tex` (synced from `../source/`), `ch01-problems.tex`, `ch01-tikz-styles.tex`, figure patches, `references.bib`.
