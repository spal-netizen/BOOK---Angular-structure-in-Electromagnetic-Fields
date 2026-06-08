# Start Here — Volume I



**Baseline locked:** 2026-05-24  

**Chapter 1 locked:** 2026-06-07 (forensic re-lock)  

**Chapter 2 locked:** 2026-05-31  

**Governance sync locked:** 2026-06-07  



---



## Physical review (before break)



| Item | Location |

|------|----------|

| **Print this PDF** | `review/Volume-I-Physical-Review-2026-05-31.pdf` |

| Page map + checklist | `review/README-PHYSICAL-REVIEW.md` |

| Margin notes template | `review/author-margin-notes-TEMPLATE.md` |

| Live build (same content) | `latex/main.pdf` — **301 pages**, exit 0 |



**Review scope:** Ch. 1 + Ch. 2 only (locked manuscript). Ch. 3–4 are scaffolds — skip for content review.



---



## Resume (Ch. 3 — after return, Friday 2026-06-06)



| Item | Value |

|------|--------|

| Manuscript | `latex/ch02.tex` — **Ch. 2 LOCKED** (§2.0–§2.11); `latex/ch03.tex` scaffold |

| Next subsection | **§3.0.1** Symmetry, operators, and representations |

| PDF | `latex/main.pdf` — **301 pages** (build exit 0) |

| Ch. 1 sign-off | `TOC/CH01-MANUSCRIPT-SIGNOFF-LOCK.md` |

| Ch. 2 sign-off | `TOC/CH02-MANUSCRIPT-SIGNOFF-LOCK.md` |



**Copy-paste command:**



```text

GCHECK REFRESH DRAFT 3.0.1 — CH3-FRESH MIN-5PP ZERO-REPEAT

```



---



## Three files to open first



1. `TOC/CH01-MANUSCRIPT-SIGNOFF-LOCK.md` — Ch. 1 re-lock authority (2026-06-07)  

2. `TOC/CH02-MANUSCRIPT-SIGNOFF-LOCK.md` — Ch. 2 lock authority  

3. `TOC/GCHECK-MASTER-CUMULATIVE.md` — zero-deviation checklist  

4. `latex/ch03.tex` — write at `\label{sec:ch301}` (§3.0.1)  



Chapter 1: `latex/ch01.tex` — **COMPLETE_LOCKED** (forensic edit complete; figure layout polish author-deferred).  

Chapter 2: `latex/ch02.tex` — **COMPLETE_LOCKED** — no prose edits without unlock.



---



## Rules (one line each)



- **Zero deviation:** full GCHECK read-set before every draft  

- Define once (`[HOME]`); later sections cite (`[USE SS…]` / `\ref`)  

- **Ch. 2 forbidden repeats:** full Maxwell derivation, gauge introduction, angular-momentum conservation proof (`00-FORWARD-MAP.yaml`)  

- **Depth:** ≥ 5 PDF pages per subsection (`CH2-FRESH MIN-5PP`)  

- **Review:** chapter-end audit only (author)  

- **Session end:** Save All → confirm `TOC/END-OF-SESSION-PROTOCOL-LOCK.md`  



---



## Locked governance (priority order)



| # | File |

|---|------|

| 1 | `TOC/GCHECK-MASTER-CUMULATIVE.md` |

| 2 | `LOCK-MANIFEST.md` |

| 3 | `.cursor/rules/book-consistency.mdc` |

| 4 | `TOC/SUBSECTION-DRAFTING-CONTRACT-ULTIMATE.md` |

| 5 | `TOC/CITATION-CONTRACT-ULTIMATE.md` |

| 6 | `TOC/NO-RECURSION-AUDIT-PASS-ULTIMATE.md` |

| 7 | `00-NOTATION.md` |

| 8 | `00-FORWARD-MAP.yaml` |

| 9 | `TOC/THEOREM-HOME-MATRIX-19CH-ULTIMATE.md` |

| 10 | `MODEL-WORKFLOW-LOCKED.md` |



TOC line authority: `TOC/volume-I-ch01-04-FINAL.txt`



Ch. 2 workflow locks: `TOC/CH02-FRESH-RESTART-LOCK.md`, `TOC/CH02-SESSION-SAVE-LOCK.md`



---



## Build



```powershell

powershell -ExecutionPolicy Bypass -File .\scripts\Build-VolumeI-ChapterBib.ps1

```



Output: `latex/main.pdf` (local; gitignored).

