# Figure / equation reconciliation

## PDF vs TeX figures

- **30** numbered figures in the standalone PDF (Fig. 1.1–1.30): **29** `\begin{figure}` environments in `ch01.tex` plus **1** in `ch01-foundation-seeds-passK-bridges.tex` (`fig:ch1.green-function-seed`, Fig. 1.7).
- `ch01-handdrawn-figures.tex` remains **macro-only** (no extra float unless ink asset exists).
- **Artwork audit:** caption/prose for critical figures; no batch TikZ redraw.

## Equations

- **182** `eq:ch1.*` labels after VSW addition; **0** orphan refs (fixed Lorenz orphan strings).
- New: `eq:ch1.vsw-curl-identities`, `eq:ch1.vsw-delta-E-expansion`, `eq:ch1.vsw-delta-H-expansion`.

## Problems

- **Problem 3(c)** (printed PDF): lossless Eq. (1.38) vs lossy Eq. (1.40) cross-reference; earlier report typo “Problem 2(c)” corrected.

## PDF artifact lock

- Single release artifact: `build_package/main-ch01-only.pdf` = `CHAPTER1_R13_1_RELEASE.pdf` = `CHAPTER1_R13_1_FINAL_AUTHOR_REVIEW/pdf/...` (byte-identical copies).
