# BASELINE LOCK — Volume I Start-Fresh Package

**Locked on:** 2026-05-24  
**Status:** FROZEN — do not edit locked files without explicit unlock  
**Purpose:** Resume writing at §1.0.1 with zero ambiguity  

---

## START HERE (when you return)

1. Read this file (`LOCK-MANIFEST.md`) — 2 minutes  
2. Read `00-NOTATION.md` — conventions are **locked**  
3. Open `TOC/volume-I-ch01-04-FINAL.txt` — find §**1.0.1** `[HOME]`  
4. Write bullets in `outlines/ch01/1.0.1.txt`  
5. Draft prose only in `latex/ch01.tex` at `\label{sec:ch101}`  

**Do not use:** any `*-smoothed.txt` TOC file.

---

## LOCKED FILES (authoritative — do not change)

| File | Role |
|------|------|
| `TOC/volume-I-ch01-04-FINAL.txt` | **Only** Volume I outline (171 subsections) |
| `TOC/VOLUME-I-FINAL-REVIEW.md` | Sign-off: complete, ordered, non-recursive |
| `00-NOTATION.md` | SI, \(e^{-j\omega t}\), symbols, labels |
| `00-FORWARD-MAP.yaml` | HOME / USE / DEFER rules per chapter |
| `MODEL-WORKFLOW-LOCKED.md` | Locked model-selection workflow for drafting/rigor gates |
| `.cursor/rules/book-consistency.mdc` | AI drafting rules |
| `latex/preamble.tex` | Document class & packages |
| `latex/macros.tex` | Phasor macros `\E`, `\H`, etc. |
| `latex/main.tex` | Build entry point |
| `latex/frontmatter.tex` | Title, TOC, preface shell |
| `latex/references.bib` | Starter bibliography |
| `tier-tags.md` | A/B/C priority guide |

---

## LOCKED SCAFFOLD (structure only — you add prose)

| File | Content |
|------|---------|
| `latex/ch01.tex` | Chapter 1 sections only (32 subsections) |
| `latex/ch02.tex` | Chapter 2 scaffold |
| `latex/ch03.tex` | Chapter 3 scaffold |
| `latex/ch04.tex` | Chapter 4 scaffold |

**Rule:** One chapter per `.tex` file. Never merge ch02–ch04 into `ch01.tex`.

---

## REFERENCE ONLY (read, do not edit for Vol. I draft)

| File | Note |
|------|------|
| `TOC/TOC-master-19chapters-ULTIMATE-V3-forward-only.txt` | **Official master TOC** for full-book drafting (19 chapters, strict forward-only x.y.z) |
| `TOC/TOC-master-19chapters-ULTIMATE-FINAL.txt` | Ownership baseline used to generate V2/V2.1/V2.2/V3 |
| `TOC/TOC-master-19chapters-definitive.txt` | Legacy full outline archive |
| `TOC/TOC-COVERAGE-AUDIT.md` | Coverage proof vs original |
| `TOC/PROFESSOR-STRUCTURAL-REVIEW.md` | Three-volume plan |
| `TOC/Before smoothening TOC-…txt` | Historical archive |

---

## DEPRECATED (do not use)

- `TOC/*-smoothed.txt`  
- `TOC/volume-I-ch01-04-definitive.txt` (superseded by FINAL)  
- Downloads folder original TOC for editing  

---

## LOCKED CONVENTIONS

| Item | Value |
|------|--------|
| Time convention | \(e^{-j\omega t}\) |
| Units | SI |
| Volume I chapters | 1–4 only |
| Subsections | 171 |
| Forward pointers | §1.7, §2.11, §3.11, §4.11 only |
| Examples format | [FIG+PROB] on §1.6, §2.10, §3.10, §4.10 |

---

## LOCK ADDENDUM (2026-05-25 — AUTHOR MANDATE)

The following drafting constraints are now locked for this manuscript and override stylistic discretion:

1. No recursion or repetition of equations, concepts, narration patterns, or discussion structures across subsections, sections, or chapters; prior material may only be inherited through explicit back-reference.
2. Citations must prioritize pioneering/original sources and latest proven developments, placed exactly at the sentence location where the claim, equation, method, or interpretation requires support.
3. Figures remain minimal and schematic, used only when necessary to clarify equations or physical concepts.
4. Numbering policy is chapter-wise, including equation numbers in the form `(1.1)` and chapter-local reference numbering in the form `[1.1]`.
5. Expository body text in manuscript chapters must not use bullet-list expression; variables, figure levels, and captions are introduced inline with formal prose.
6. Every subsection must have unique opening and closing paragraphs; similarly framed openings/closings are forbidden across subsections.
7. In Volume I, every section (`X.0`, `X.1`, `X.2`, ...) must contain introductory and summative paragraphs that frame all subsections under that section.
8. Every subsection draft must achieve substantial mathematical depth from accessible starting assumptions to full derivation detail.
9. Every variable and symbol in equations must be explicitly defined at first appearance.
10. Every major equation must include both mathematical-function explanation and detailed physical explanation.
11. Every subsection must be stylistically unique, with visibly distinct opening and closing paragraph framing.
12. Equation-explanation prose must avoid repetitive sentence construction; descriptions must be varied, authoritative, and precise.
13. Equation and reference numbering is chapter-wise and monotone within each chapter (e.g., `(1.1), (1.2), ...` and `[1.1], [1.2], ...`).
14. Drafting quality for all 19 chapters must match classical monograph standards in depth, density, construction, and page appearance consistent with Harrington, Pozar, Collin, Balanis, Jackson, and Griffiths level expectations.
15. Drafting order is section-first: for every section (`X.0`, `X.1`, `X.2`, ...), write section-level introductory framing before any subsection draft; complete subsection sequence; then write section-level summative bridge.
16. Global prose-style lock: all manuscript drafting must follow **Version A — Classical Monograph Tone** (professional, measured, authoritative scholarly prose), avoiding directive/commanding diction and preserving reader-friendly formal flow.

---

## LOCK ADDENDUM (2026-05-25 — ULTIMATE GOVERNANCE)

The following control files are now authoritative for all drafting after TOC redesign:

- `TOC/TOC-master-19chapters-ULTIMATE-V3-forward-only.txt` (**official master TOC**)
- `TOC/TOC-master-19chapters-ULTIMATE-FINAL.txt` (ownership reference source)
- `TOC/THEOREM-HOME-MATRIX-19CH-ULTIMATE.md`
- `TOC/SUBSECTION-DRAFTING-CONTRACT-ULTIMATE.md`
- `TOC/CITATION-CONTRACT-ULTIMATE.md`
- `TOC/NO-RECURSION-AUDIT-PASS-ULTIMATE.md`
- `MODEL-WORKFLOW-LOCKED.md`

Enforcement requirements:

1. One-proof ownership: every theorem family has one `HOME`; all other uses are cite-only.
2. Cross-chapter overlap removal: Chapters 13-16 inherit Fisher/CRB, rank, detectability, and conditioning results per theorem-home map; no re-proofs outside owners.
3. Depth normalization: each core subsection includes statement, assumptions, derivation/proof, interpretation, validity boundary, and forward link.
4. Citation governance: chapter-wise pioneering plus modern validated citation pair at claim sentence location.
5. No-recursion audit: run per chapter before freeze and resolve all repeated equation/claim blocks by `HOME/USE` reduction.
6. Prose uniqueness lock: subsection openings and closings must be uniquely framed.
7. Volume I section framing lock: every section must include introductory and summative framing paragraphs.
8. Depth lock: each subsection must maintain substantial mathematical derivation depth.
9. Variable-definition lock: all equation symbols must be explicitly defined.
10. Equation-meaning lock: each major equation requires both mathematical and physical interpretation passages.
11. Style-uniqueness lock: subsection openings/closings and equation-explanation phrasing must be non-repetitive and distinctly framed.
12. Chapter-numbering lock: equations and references must follow chapter-wise increasing numbering conventions.
13. Classical-monograph lock: all chapters must sustain legendary-level technical depth, density, rhetorical construction, and page-level scholarly appearance.
14. Model-workflow lock: task-based model switching is allowed, but subsection acceptance requires final high-rigor pass per `MODEL-WORKFLOW-LOCKED.md`.
15. Section-first lock: drafting must start at section level (not directly at first subsection), then proceed subsection-by-subsection, then close with section summary bridge.
16. Style-tone lock: chapter prose must use Version A classical monograph tone across all 19 chapters.

---

## WRITING ORDER (locked sequence)

```
SS1.0.1 -> SS1.0.2 -> SS1.0.3 -> SS1.1.1 -> ... -> SS1.7.3
then Chapter 2, etc.
```

Do not skip ahead to Ch. 2 until §1.7 is drafted.

---

## OPTIONAL SETUP (not locked — install when ready)

- Git, TeX Live, Python — see `SETUP-WINDOWS.md`  
- Track progress in `progress.md` (you may update dates/checkboxes)

---

## UNLOCK POLICY

To change **locked** TOC or notation:

1. Note reason in `progress.md`  
2. Update `LOCK-MANIFEST.md` with date + what changed  
3. Re-run alignment of `00-FORWARD-MAP.yaml` if TOC changes  

---

*Baseline locked. Safe to take a break. Resume at §1.0.1.*
