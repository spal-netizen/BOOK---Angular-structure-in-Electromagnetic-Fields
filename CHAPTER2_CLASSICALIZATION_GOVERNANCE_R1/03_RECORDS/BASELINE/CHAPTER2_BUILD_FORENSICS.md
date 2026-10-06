# Chapter 2 — Build Forensics (Stage 1)

## Command (declared)

From `latex/main.tex` header:

```text
latexmk -pdf main.tex   (working directory: latex/)
```

## Engine (indirect)

Last known MiKTeX pdfTeX line from Ch.1 build log in scholarly-production tree (reference only): pdfTeX 3.141592653-2.6-1.40.29 (MiKTeX 26.5). **Ch.2-specific build not executed in Stage 1.**

## Dependencies affecting Ch.2

- Shared TikZ/figure infrastructure from Chapter 1 figure library (`ChOneFigBlock`, `ch1fig` styles).  
- Shared bibliography `references.bib`.  
- Cross-chapter `\ref{ch:01}`, `\ref{ch:03}`, `\ref{ch:04}`.

## Outputs

| Artifact | Status |
|----------|--------|
| `latex/main.pdf` | **Absent** in workspace |
| Author split PDF 105–252 | **Present** (baseline) |

## Stage 1 actions taken

- **No** build.  
- **No** modification to Makefile/latexmkrc.

## Recommended Stage 2 action

Controlled build of full Volume I or author-approved Ch.2-only driver; diff PDF page map against `Volume-I-Author-Review-105-252.pdf`.
