# Phase VIII-E â€” Physical Memory Corps report

**Date:** 2026-06-25  
**Gate:** PASS

## Contract

- 2â€“5 paragraphs per vignette; **no inline or displayed equations**
- Concrete hardware opening; closes with `\ref{sec:...}` only
- Density target: one vignette every 4â€“6 PDF pages in Ch. 2â€“4
- Priority fatigue zones receive **double** vignettes (reciprocity bench + historical thread)

## Counts

| Metric | Value |
|--------|------:|
| Vignettes in manuscript | 171 |
| Planned (catalog) | 187 |
| Hardware catalog entries | 66 |

## Files

- `latex/macros.tex` â€” `physicalvignette` environment
- `latex/vol-i-physical-memory-inserts.tex` â€” archive of all vignette bodies
- `TOC/VOL-I-PHYSICAL-MEMORY-CATALOG.tsv` â€” anchor Ã— hardware map
- `TOC/VOL-I-PHYSICAL-MEMORY-INSERT-MAP.md` â€” placement summary

## Apply / verify

```powershell
.\scripts\VolI-Phase8E-Physical-Memory.ps1 -Apply
.\scripts\VolI-Phase8E-Physical-Memory.ps1 -Chapters 3 -Apply   # Ch. 3 restore only
.\scripts\VolI-Phase8E-Physical-Memory.ps1 -VerifyOnly
.\scripts\Build-VolumeI-Final.ps1
```
