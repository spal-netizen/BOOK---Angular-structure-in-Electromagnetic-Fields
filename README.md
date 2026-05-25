# Angular Structure in Electromagnetic Fields — Volume I (Ch. 1–4)

**Baseline locked:** 2026-05-24 — open **`START-HERE.md`** when you resume.

Graduate monograph project: **SI units**, time convention **\(e^{-j\omega t}\)**, **12-month** manuscript target.

## Quick start

1. **Install** (one time): [TeX Live](https://tug.org/texlive/) or MiKTeX, [Git for Windows](https://git-scm.com/download/win) (not detected on this machine yet), Python 3.
2. **Open this folder in Cursor.**
3. **Read before every writing session:** `00-NOTATION.md`, `00-FORWARD-MAP.yaml`, active outline in `outlines/chNN/`.
4. **Build PDF:**
   ```powershell
   cd latex
   latexmk -pdf main.tex
   ```
5. **Daily workflow:** one subsection — bullets in `outlines/` → AI expand in Cursor → you verify math → log row in `progress.md`.

## Project layout

| Path | Purpose |
|------|---------|
| `00-NOTATION.md` | Locked symbols and conventions |
| `00-FORWARD-MAP.yaml` | What each chapter may/may not repeat |
| `TOC/volume-I-ch01-04-FINAL.txt` | Volume I legacy writing TOC (171 subs, Ch. 1-4 path) |
| `TOC/VOLUME-I-FINAL-REVIEW.md` | Sign-off review (completeness, order, no recursion) |
| `TOC/TOC-master-19chapters-ULTIMATE-V2.2-editorial-polish.txt` | **AUTHORITATIVE MASTER** full-book TOC for drafting |
| `TOC/TOC-master-19chapters-ULTIMATE-FINAL.txt` | Ownership-reference source for HOME/USE ancestry |
| `TOC/THEOREM-HOME-MATRIX-19CH-ULTIMATE.md` | One-proof ownership map across all chapters |
| `TOC/SUBSECTION-DRAFTING-CONTRACT-ULTIMATE.md` | Mandatory subsection structure contract |
| `TOC/CITATION-CONTRACT-ULTIMATE.md` | Chapter-wise citation governance |
| `TOC/NO-RECURSION-AUDIT-PASS-ULTIMATE.md` | Per-chapter recursion audit checklist |
| `TOC/TOC-master-19chapters-definitive.txt` | Legacy full 19-chapter TOC archive |
| `TOC/TOC-COVERAGE-AUDIT.md` | **Rigorous confirmation** — no missing math/topics |
| `TOC/TOC-REVIEW-REPORT.md` | Title-de-duplication rules (smoothed version **withdrawn**) |
| ~~`TOC-*-smoothed.txt`~~ | **Do not use** — incomplete (Ch. 5–19 topics removed) |
| `latex/` | `main.tex`, `ch01.tex`–`ch04.tex` |
| `outlines/chNN/M.N.P.txt` | Your bullets before AI prose |
| `inheritance/` | Draft text for §x.11 sections |
| `progress.md` | 12-month tracker |
| `tier-tags.md` | A/B/C priority per subsection |
| `.cursor/rules/` | AI consistency rules |

## Regenerate section stubs (after TOC edit)

```powershell
python scripts/generate_chapter_stubs.py
```

## Cursor prompt template

```
Read 00-NOTATION.md and 00-FORWARD-MAP.yaml (chapter N).
Expand outlines/ch0N/M.N.P.txt into monograph prose for latex/ch0N.tex label sec:chMNP.
Do not redefine forbidden_repeat items; use \ref to Ch. 1–3 only.
End with 2 sentences linking to the next subsection.
```

## Volumes (series)

| Volume | Chapters | Status |
|--------|----------|--------|
| **I** | 1–4 | **Active** |
| II | 5–12 (planned) | TOC only in full manuscript |
| III | 13–19 (planned) | TOC only |

## Governance status

- Official master TOC: `TOC/TOC-master-19chapters-ULTIMATE-V2.2-editorial-polish.txt`
- Theorem ownership lock: `TOC/THEOREM-HOME-MATRIX-19CH-ULTIMATE.md`
- Drafting contract lock: `TOC/SUBSECTION-DRAFTING-CONTRACT-ULTIMATE.md`
- Citation lock: `TOC/CITATION-CONTRACT-ULTIMATE.md`
- No-recursion audit lock: `TOC/NO-RECURSION-AUDIT-PASS-ULTIMATE.md`
# BOOK---Angular-structure-in-Electromagnetic-Fields
