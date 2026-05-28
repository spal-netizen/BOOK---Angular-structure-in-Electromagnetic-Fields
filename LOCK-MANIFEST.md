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
3. Depth normalization: each core subsection includes statement, assumptions, derivation/proof, interpretation, and validity boundary.
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

## LOCK ADDENDUM (2026-05-27 — BOOK OBJECTIVE AND PROSE-FLOW LOCK)

The following objective-level requirements are now explicitly locked and govern all future drafting:

1. No repetition/recursion of equations, claims, concepts, narrative blocks, or listing structures across subsections, sections, or chapters; all prior content is inherited only by precise `HOME/USE` reference.
2. No stereotype sentence templating: subsection openings, equation explanations, transitions, and closings must be rhetorically varied and non-mechanical.
3. Manuscript prose must read as continuous scholarly monograph argumentation, not TOC-shaped AI subsection filler; each subsection must sustain natural argumentative flow with embedded physical interpretation.
4. Every subsection must remain sufficiently descriptive to preserve reader engagement while maintaining rigorous mathematical depth and formal precision.
5. Redrafting sequence is forward-only from current chapter position, beginning at `1.1.1` and continuing in order (`1.1.2`, `1.1.3`, `1.1.4`, `1.1.5`) without skipping.

---

## LOCK ADDENDUM (2026-05-27 — EQUATION PEDAGOGY AND READER-FLOW LOCK)

The following subsection-level exposition protocol is now mandatory across all sections and all chapters of the full book:

1. Each subsection must read as continuous, advanced scholarly monograph prose with sustained conceptual flow; scaffold-like or TOC-shaped filler narration is forbidden.
2. Every symbol, operator, parameter, domain qualifier, geometric element, and differential element appearing in an equation must be explicitly defined in nearby manuscript prose at first use.
3. For every major equation block, exposition order is locked:
   (a) operand-level functional explanation (piecewise role of each operator/term),
   (b) functional explanation of the complete equation,
   (c) elaborated physical interpretation and implications.
4. Wherever it materially improves comprehension, include a compact conceptual schematic figure in the subsection body with caption and direct equation linkage.
5. Opening and closing paragraph framing must remain uniquely written across subsections; repeated sentence templates are disallowed even within the same section.
6. Student readability is a hard quality criterion: rigorous depth is preserved, but transitions and interpretation must remain pedagogically navigable for advanced learners.

---

## LOCK ADDENDUM (2026-05-27 — EQUATION NUMBERING AND INHERITANCE DISCIPLINE)

The following equation-governance rules are permanently locked for all chapters:

1. Equation numbers are reserved for major governing relations, major theorem statements, and major derivation milestones only.
2. Small defining expressions, range constraints, symbol declarations, and short algebraic intermediate relations must appear inline or in unnumbered display form.
3. If an equation from any earlier subsection is needed later, reuse is by textual reference to the original label only; re-expression with a new equation number is forbidden.
4. Subsection drafting must actively control equation-count inflation by grouping logically connected relations into compact major equation blocks.

---

## LOCK ADDENDUM (2026-05-27 — CITATION PLACEMENT AND SOURCE QUALITY LOCK)

The following citation-governance rule is permanently locked for all sections and chapters:

1. Citations must be placed exactly at the sentence location where a law, proven concept, verified statement, or nontrivial technical discussion requires support.
2. Source selection must prioritize pioneering/original works, legendary foundational literature, and validated modern proven developments; weak or non-authoritative citation substitution is disallowed.
3. Citation insertion is requirement-driven, not decorative: include references when technical support is needed, and avoid citation clutter where no external support is required.
4. Every subsection drafting pass must explicitly check citation placement and source quality before acceptance.

---

## LOCK ADDENDUM (2026-05-27 — SCHEMATIC FIGURE EMBEDDING LOCK)

The following figure-governance requirement is now explicitly locked:

1. Whenever a theorem statement, governing equation block, or conceptual transition would benefit readability, include a compact conceptual schematic figure in the same subsection.
2. Every such figure must carry a proper figure environment, chapter-local label, and precise caption.
3. Figure discussion is mandatory in running body text: explain what each key label means mathematically and what physical interpretation is intended.
4. Figure insertion is purpose-driven; decorative figures and unlabeled sketches are disallowed.
5. Reuse of a prior schematic is allowed only when a new regime variant is explicitly stated in text.

---

## LOCK ADDENDUM (2026-05-27 — ALWAYS-RECALL EXECUTION LOCK)

These governance constraints are not advisory; they are always-on execution constraints.
Every drafting/editing action must recall and apply all active locks before text generation,
during equation exposition, and at subsection closure.

---

## LOCK ADDENDUM (2026-05-27 — CHAPTER 1 CONTROLLED DEPTH-EXPANSION LOCK)

The Chapter 1 depth-expansion execution blueprint is now locked and mandatory:

- `TOC/CH01-CONTROLLED-DEPTH-EXPANSION-PLAN.md`

Enforcement requirements:

1. Every Chapter 1 subsection redraft must follow the controlled depth-expansion protocol in this file.
2. Subsection-level target length is locked at 3-5 PDF pages unless explicitly overridden by user approval.
3. Each subsection heading term must receive explicit conceptual narration (definition, objective relevance, and relation to subsection objective).
4. Equation exposition must include operand-level mathematical role, full-equation function, and physical interpretation.
5. Schematic figures must be inserted whenever readability materially improves theorem/equation/concept flow.
6. Chapter 1 page-growth target remains locked at 80-100 pages through technical depth expansion, not layout inflation.
7. Execution order for immediate depth growth is locked as: `1.1.2 -> 1.1.3 -> 1.1.4 -> 1.1.5`, then strict forward sequence.

---

## LOCK ADDENDUM (2026-05-28 — READER-CLARITY, FIGURE-DENSITY, AND PROSE-BAN LOCK)

The following drafting requirements are now permanently locked for all chapters and all subsections:

1. Baseline narration style is locked to senior scholarly professor tone with reader-friendly conceptual continuity.
2. Every subsection must include expanded foundational math-and-physics narration from basic-level entry assumptions up to major governing equations.
3. Intermediate relations (small equations/expressions, valid domains, variable ranges, and assumptions) must be included when they materially improve understanding of major equations.
4. Conceptual schematic figures are encouraged at higher frequency when they improve engagement and clarity; each figure must include correct label and caption and must be explained in running prose.
5. Architecture-centric prose justification is banned in section/subsection text: do not justify manuscript architecture, drafting architecture, or subsection-title architecture inside scientific narrative.
6. Title-head explanation prose is banned as a framing device; subsection writing must proceed directly through concept/equation reasoning rather than metacommentary on title wording.
7. Justification is allowed only for physical concepts, mathematical formulations, assumptions, domains, and equation logic.
8. Chapter rhythm lock: maintain consistent classical monograph cadence, depth density, and explanatory continuity in the style of legendary advanced EM texts.
9. Section restart lock: redrafting restart point is Section `1.0` onward, in strict forward order, under all active locks.

---

## LOCK ADDENDUM (2026-05-28 — GCHECK CANONICAL CUMULATIVE SET)

The following GCHECK protocol is the active cumulative governance set for all future drafting and editing actions.
New instructions are refinements of this set and do not silently remove essential prior locks.

1. Cumulative update policy: treat new instructions as updates/refinements, not replacements of essential old rules.
2. Core governance read-before-draft is mandatory: `LOCK-MANIFEST.md`, `.cursor/rules/book-consistency.mdc`, `TOC/SUBSECTION-DRAFTING-CONTRACT-ULTIMATE.md`, `00-NOTATION.md`, and `00-FORWARD-MAP.yaml`.
3. Strict forward drafting with line-by-line approval; no subsection skipping.
4. Version A classical monograph tone is mandatory: senior scholarly professor voice, reader-friendly continuity, smooth formal subject-centric narrative flow.
5. Strict no-recursion/no-repetition across subsections, sections, and chapters for equations, concepts, narrative sentences, and templates; inherit by explicit reference only.
6. Section-first structure is mandatory: section intro, subsection sequence, section summary; subsection-level bridge text is not mandatory.
7. Depth mandate: dense, sufficient, foundational math+physics from undergraduate-level assumptions to major equations.
8. Equation pedagogy mandate: define all symbols at first use; include intermediate expressions where needed; explain each major equation at term-level, full-equation level, and physical-meaning level; keep chapter-wise increasing equation numbering.
9. Citation mandate: perform robust source search in relevant scientific literature; cite at claim/equation/discussion point of need; prioritize pioneering/original and validated modern sources; keep chapter-wise increasing reference numbering.
10. Figure mandate: chapter-wise increasing figure numbering; use conceptual schematic figures whenever new/complex concepts benefit readability; every figure must have label, caption, and in-body explanation; decorative figures are disallowed.
11. Prose bans: architecture-centric justification prose is forbidden; title-head metacommentary is forbidden; justification is allowed only for concepts, equations, assumptions, domains, and physics reasoning.
12. Manuscript prose in chapter text must be science-centric and student-comprehension-centric only; governance/process vocabulary (e.g., HOME/USE tags, TOC/process narration, section-architecture commentary) is forbidden inside explanatory paragraph bodies.
13. Global expansion target: 3-5 PDF pages per subsection; restart point for controlled redrafting is Section `1.0` onward.

This addendum resolves interpretation conflicts in earlier text: subsection forward links are optional and no longer mandatory as a hard compliance criterion.

---

## LOCK ADDENDUM (2026-05-28 — SCIENCE-CENTRIC PROSE PRIORITY LOCK)

The following prose-governance requirement is now permanently locked for all chapter drafting:

1. Every paragraph in manuscript subsections must be constructed around mathematical statements, physical meaning, assumptions, validity, measurement implications, and reader-learning clarity only.
2. Governance tags/ownership language (`HOME`, `USE`, drafting-process remarks, TOC-centric explanations) must not appear as explanatory narrative content in subsection bodies.
3. Paragraph openings, transitions, and closings must present substantive scientific information and pedagogical interpretation, not process commentary.

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
