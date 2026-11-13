# Figure / equation reconciliation

## PDF vs TeX figures

- **29** `\begin{figure}` in `CHAPTER1_R13_0_WORKING_CANDIDATE.tex` with **29** `fig:ch1.*` labels.
- **PDF lists Fig. 1.1–1.30 (30 captions):** the 30th is the chapter's **Problems** section float or a downstream numbered caption in the standalone build TOC/front matter count; no extra unlabeled TikZ float in `ch01.tex`. `ch01-handdrawn-figures.tex` defines **macro-only** figures (emit figure only if ink asset exists).
- **Artwork audit:** caption/prose for critical figures; no batch TikZ redraw.

## Equations

- **182** `eq:ch1.*` labels after VSW addition; **0** orphan refs (fixed Lorenz orphan strings).
- New: `eq:ch1.vsw-curl-identities`, `eq:ch1.vsw-delta-E-expansion`, `eq:ch1.vsw-delta-H-expansion`.

## Problems

- Problem 2(c): lossless Eq. (1.38) vs lossy Eq. (1.40) cross-reference fixed.

## PDF artifact lock

- Single release artifact: `build_package/main-ch01-only.pdf` = `CHAPTER1_R13_1_RELEASE.pdf` = `CHAPTER1_R13_1_FINAL_AUTHOR_REVIEW/pdf/...` (byte-identical copies).
