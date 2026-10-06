# Chapter 2 — Source Closure (Stage 1)

## Primary closure set (reproduce `ch02` in Volume I build)

| File | Role |
|------|------|
| `latex/main.tex` | Document root; `\include{ch02}` |
| `latex/ch02.tex` | **Chapter 2 manuscript (sole body)** |
| `latex/preamble.tex` | Packages, theorem styles, `\input` chain |
| `latex/macros.tex` | EM macros |
| `latex/vol-i-time-convention.tex` | Comment lock (verify vs Ch.2 prose) |
| `latex/ch01-tikz-styles.tex` | TikZ styles (`ch1fig`, `ChOneFigBlock`) |
| `latex/fig-macros.tex` | `\input{ch01-handdrawn-figures}`, `vol-i-physical-figure-library` |
| `latex/ch01-handdrawn-figures.tex` | Shared figure macros |
| `latex/vol-i-physical-figure-library.tex` | Physical figure library |
| `latex/references.bib` | Bibliography |
| `latex/frontmatter.tex` | Included by main (pre-chapter) |
| `latex/ch01.tex` … `ch04.tex` | Full volume build order (Ch.2 not isolated in repo) |

## Files listed in charter but not `\input` by `ch02.tex`

Present in repo as **legacy / seed** fragments (not current `\input` chain for `ch02.tex`):

- `ch01-foundation-seeds-partA.tex` … `partE.tex` — under `latex/` **not found** at repo root (only in backups/RECOVERY); **not** part of active `ch02` closure.

## Standalone Chapter 2 PDF

**No** `main-ch02-only.tex` identified. Building Ch.2 alone would require author-approved extract project (not Stage 1).

## Reproducibility verdict

| Question | Answer |
|----------|--------|
| Unambiguous primary source? | **Yes** — `latex/ch02.tex` |
| Matches author PDF 105–252? | **Assumed** (section titles align); **not byte-verified** |
| Rebuild verified? | **No** (CH2-D004) |
