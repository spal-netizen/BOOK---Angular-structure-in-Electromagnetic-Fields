# BASELINE LOCK — Volume I Start-Fresh Package

**Locked on:** 2026-05-24  
**Status:** FROZEN — do not edit locked files without explicit unlock  
**Purpose:** Resume writing at §1.0.1 with zero ambiguity  

---

## START HERE (when you return)

1. Read `START-HERE.md` — resume pointer (1 min)  
2. Read `TOC/CH01-MANUSCRIPT-SIGNOFF-LOCK.md` — Ch. 1 **RE-LOCKED** (2026-06-07)  
3. Read `TOC/CH02-MANUSCRIPT-SIGNOFF-LOCK.md` — Ch. 2 **LOCKED** (2026-05-31)  
4. Read `00-NOTATION.md` — conventions + Ch. 2 operator symbols **locked**  
5. Open `latex/ch03.tex` — §3.0 framing + §3.0.1 drafted; next **§3.0.2**
6. Read `TOC/CH03-DRAFTING-KICKOFF-LOCK.md` before each subsection

**Resume command:** `GCHECK REFRESH DRAFT 3.0.2 — CH3-FRESH MIN-5PP ZERO-REPEAT`

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
| `latex/ch01-tikz-styles.tex` | Shared TikZ styles for all Ch.~1 figures |
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

## LOCK ADDENDUM (2026-05-29 — SUBSECTION-HEAD EXPLANATION + SEMINAL-FIRST CITATION LOCK)

The following requirements are permanently locked and mandatory for every subsection drafting pass:

1. Every semantic component named in a subsection heading must be explicitly and sufficiently explained in running prose with student-friendly clarity while preserving expert-level scholarly rigor and Version A classical monograph tone.
2. Subsection depth is measured by scientific completeness, not visual padding: heading-component unpacking, full derivation chains, and physical interpretation must be expanded until book-format depth reaches approximately five pages unless explicitly changed by the author.
3. Citation placement remains sentence-local and proof-local: any law, theorem, established reasoning chain, or detailed technical discussion must carry support exactly where the claim is made.
4. Source-order policy is mandatory: cite originator/seminal/pioneering literature first, then foundational legendary monographs, then validated modern developments where needed.
5. Citation substitution with weaker secondary sources is non-compliant when seminal or canonical sources are available.

---

## WRITING ORDER (locked sequence)

```
Chapter 1: SS1.0.1 -> ... -> SS1.7.3   [COMPLETE AND LOCKED — 2026-05-29]
Chapter 2: SS2.0.1 -> ... -> SS2.11.3   [NEXT — after user confirms GCHECK lock]
```

Chapter 1 manuscript is frozen except author-directed figure layout fixes. Do not reopen Ch. 1 theory/equations without explicit unlock in `progress.md`.

---

## LOCK ADDENDUM (2026-05-29 — ZERO-DEVIATION + GCHECK MASTER + CH.2 GATE)

**Status:** Governance updated for Ch. 1 closure and Ch. 2 entry; **Ch. 2 drafting gated on user review** of updated GCHECK files.

| Item | Value |
|------|--------|
| GCHECK master | `TOC/GCHECK-MASTER-CUMULATIVE.md` — **LOCKED 2026-05-29** (canonical zero-deviation checklist) |
| Zero deviation | No TOC skip; no equation/concept re-display; no template prose; full symbol definitions; seminal-first citations; unique framing even for similar cases |
| New concepts | New law/theorem/allied construct → assigned HOME subsection or new TOC subsection/section before drafting |
| Ch. 1 figures | 68 TikZ complete; **visual layout polish AUTHOR-DEFERRED** |
| Build | `latex/main.pdf` — **131 pages** (2026-05-29) |
| Ch. 2 first target | §2.0.1 in `latex/ch02.tex` — **AUTHORIZED** via locked GCHECK master |

**User action:** Send `GCHECK 2.0.1` (or confirm in chat) to begin Chapter 2 drafting.

---

## LOCK ADDENDUM (2026-05-29 — CHAPTER 2 TOC FLOW AUDIT LOCKED)

**Status:** Chapter 2 TOC **audited, updated, and locked** before drafting.

| Item | Value |
|------|--------|
| Audit document | `TOC/CH02-TOC-AUDIT-FLOW-LOCK.md` |
| Authoritative TOC | `TOC/volume-I-ch01-04-FINAL.txt` (Ch. 2 block + minimal Ch. 3 USE back-links) |
| Scaffold | `latex/ch02.tex` — tags synced; §2.11 label `sec:ch211` |
| Subsections | 45 (unchanged) |
| Key amendments | Ch. 1 USE links on §2.1, §2.2.4, §2.4, §2.5.3–§2.5.4, §2.9.4; §2.5.3 expanded for momentum/AM flux; §2.9.1 plane-wave angular spectrum |

**Next:** `GCHECK 2.0.1` → draft §2.0.1 in `latex/ch02.tex`.

---

## LOCK ADDENDUM (2026-05-29 — CHAPTER 1 TOC SIGN-OFF)

**Status:** Chapter 1 TOC **signed off and locked** — no amendments required.

| Item | Value |
|------|--------|
| Sign-off document | `TOC/CH01-TOC-SIGNOFF-LOCK.md` |
| Subsections | 32/32 TOC ↔ manuscript match |
| Decision | **No TOC changes** — manuscript complete |

---

## LOCK ADDENDUM (2026-05-29 — CHAPTER 3 TOC FLOW AUDIT LOCKED)

**Status:** Chapter 3 TOC **audited, updated, and locked** (pre-drafting).

| Item | Value |
|------|--------|
| Audit document | `TOC/CH03-TOC-AUDIT-FLOW-LOCK.md` |
| Authoritative TOC | `TOC/volume-I-ch01-04-FINAL.txt` (Ch. 3 block + minimal Ch. 4 USE back-links) |
| Scaffold | `latex/ch03.tex` — all tags synced; §3.11 label `sec:ch311` |
| Subsections | 48 (unchanged) |
| Key amendments | Ch. 2 + Ch. 1 USE links on §3.1–§3.9; §3.11 `[DEFER]`; Ch. 4 back-links on §4.0.2, §4.4–§4.7, §4.10.1 |

---

## LOCK ADDENDUM (2026-05-29 — CHAPTER 1 FINAL AUDIT COMPLETE)

**Status:** Chapter 1 manuscript **COMPLETE AND LOCKED** for Volume I forward progression.

| Item | Value |
|------|--------|
| File | `latex/ch01.tex` |
| Subsections | 32/32 (§1.0.1–§1.7.3) |
| PDF body | Ch. 1 ~104 pp; total `main.pdf` per latest build (see `progress.md`) |
| Equations | ~100 labeled `eq:ch1.*` |
| Figures | 68 TikZ (`fig:ch1.*`); visual layout polish **AUTHOR-DEFERRED** |
| Audit date | 2026-05-29 |

Final audit resolutions:

1. **No recursion:** Maxwell (`eq:ch1.maxwell-local`), stress tensor, angular balance, plane-wave template, transport criteria, and gauge/helicity definitions owned once; later sections cite by `\ref` only.
2. **Prose de-architected:** running text purged of `gate`, `contract`, `filter`, `ownership`, title-head metacommentary; `\mathcal{D}_*` symbols retained as mathematical indices only.
3. **Citations:** Ch. 1 body uses seminal/pioneer keys only (`maxwell1873`, `poynting1884`, `stratton1941`, `belinfante1940`, `beth1936`, `allen1992`, `chu1948`, `abraham1910`, `minkowski1908`); textbook keys removed from body cites.
4. **§1.7 symbols aligned:** `\mathcal{D}_{\mathrm{org}}` consistent with `tab:ch1.admissibility-corollaries`; `\mathcal{R}_{\mathrm{ch1}}` defined in §1.7.1.
5. **Build:** `scripts/Build-VolumeI-ChapterBib.ps1` → `latex/main.pdf` (**131 pages**, 2026-05-29).

**Next authorized drafting target:** Chapter 2, Section 2.0 / §2.0.1 per `TOC/volume-I-ch01-04-FINAL.txt`.

---

## LOCK ADDENDUM (2026-05-29 — CHAPTER 1 FIGURE COMPLETION)

**Status:** All Chapter 1 worked-problem and concept schematics **COMPLETE AND LOCKED**.

| Item | Value |
|------|--------|
| Total figures | 68 (`fig:ch1.*`) |
| Concept/theorem schematics | 21 (§1.0–§1.5, §1.6 closing maps) |
| Worked-problem setup figures | 47 new `fig:ch1.wp-*` + 1 reused `fig:ch1.gauge-orbit` |
| Coverage | 48/48 `\paragraph{Worked problem:...}` blocks have figure within 15 lines |
| Format | **All 68 figures TikZ** (`latex/ch01-tikz-styles.tex`, `ch1fig` style); zero `\fbox` remaining; §1.6 FIG+PROB included |
| §1.6 FIG+PROB | `fig:ch1.ex61`–`fig:ch1.ex64` retained as subsection anchors |

Enforcement: every new Ch.~1 figure requires GCHECK read-before-edit; TikZ via `ch01-tikz-styles.tex`; caption + label + in-body interpretation mandatory; no label–geometry overlap.

---

## LOCK ADDENDUM (2026-05-29 — CHAPTER 1 TWO-TIER FIGURE LEGIBILITY)

**Status:** All 68 Ch.~1 figures refactored under **two-tier** policy (2026-05-29).

| Tier | Count | Macro | Rule |
|------|------:|-------|------|
| **A — BLOCK** | 13 | `\ChOneFigBlock{...}` | Concept/flow maps; symbols in `ch1box`; no `\eqref` in TikZ |
| **B — GEO** | 55 | `\ChOneFigGeo{...}` | Geometry/wp schematics; canvas symbols via `ch1oncanvas`; annotations via margin `ch1keybox` |

| Item | Value |
|------|--------|
| Styles | `latex/ch01-tikz-styles.tex`: `ch1oncanvas`, `ch1keybox`, split resize macros |
| BLOCK resize | `max width=0.94\linewidth`, `max height=0.44\textheight` |
| GEO resize | `max width=0.92\linewidth`, `max height=0.34\textheight` |
| Batch scripts | `scripts/Refactor-Ch01-Figure-Legibility.ps1`, `Apply-Ch01-Geo-Margin*.ps1` |
| Equations in TikZ | Stripped (`\eqref` belongs in caption / coloured-block key prose) |

Enforcement: new Ch.~1 figures must declare tier (BLOCK vs GEO), use tier macro, keep canvas uncluttered, rebuild `main.pdf`.

**Author note (2026-05-29):** Figure **content** (coverage, captions, labels, in-body interpretation) is locked; **visual spacing/overlap polish** is deferred to author manual pass — do not batch-refactor figures without explicit author request.

---

## LOCK ADDENDUM (2026-05-29 — CHAPTER 1 FIGURE LEGIBILITY, superseded tier detail)

**Status:** Superseded by two-tier addendum above; retained for audit trail.

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

*Baseline locked. Safe to take a break. Resume at **§2.6.1** (`GCHECK REFRESH DRAFT 2.6.1 — CH2-FRESH MIN-5PP ZERO-REPEAT`).*

---

## LOCK ADDENDUM (2026-05-29 — CHAPTER 2 SESSION SAVE)

**Status:** Ch. 2 drafting **IN PROGRESS** — session saved end of day.

| Item | Value |
|------|--------|
| Session lock | `TOC/CH02-SESSION-SAVE-LOCK.md` |
| Manuscript | `latex/ch02.tex` — §2.0 intro + §2.0.1 + §2.0.2 drafted |
| Next draft | **§2.0.3** Continuity with Chapter 1 |
| Build | `main.pdf` — **143 pages** (exit 0, 2026-05-29) |
| Review cadence | **Chapter-end audit only** (author); agent uses `GCHECK DRAFT NEXT — CH2-CONTINUOUS ZERO-REPEAT` |
| Ch. 1 | **Do not edit** prose/equations without unlock |

Resume: read `TOC/CH02-SESSION-SAVE-LOCK.md` → full GCHECK stack → draft §2.0.3 forward.

---

## LOCK ADDENDUM (2026-05-29 — END-OF-SESSION PROTOCOL)

**Status:** **LOCKED** — mandatory save/close procedure for all sessions.

| Item | Value |
|------|--------|
| Protocol file | `TOC/END-OF-SESSION-PROTOCOL-LOCK.md` |
| Author close | **File → Save All** → confirm disk checklist → close Cursor |
| Agent close | Sync locks + remind author Save All (agent cannot close IDE) |
| On-disk state | `latex/ch02.tex`, `latex/main.pdf`, session locks, governance sync (see protocol §3) |

**Ch. 2 session:** **FRESH RESTART** — begin `GCHECK REFRESH DRAFT 2.0 — CH2-FRESH MIN-5PP ZERO-REPEAT`. See `TOC/CH02-FRESH-RESTART-LOCK.md`.

---

## LOCK ADDENDUM (2026-05-31 — CHAPTER 2 SESSION SAVE)

**Status:** Ch. 2 drafting **IN PROGRESS** — session saved for break.

| Item | Value |
|------|--------|
| Session lock | `TOC/CH02-SESSION-SAVE-LOCK.md` |
| Manuscript | `latex/ch02.tex` — through **§2.6 intro** |
| Next draft | **§2.6.1** Eigenfunctions and spectral decomposition `[HOME]` |
| Build | `latex/main.pdf` — **219 pages** (exit 0, 2026-05-31) |
| Forward map | `00-FORWARD-MAP.yaml` → `next_subsection: "2.6.1"` |

Resume: read `TOC/CH02-SESSION-SAVE-LOCK.md` → full GCHECK stack → `GCHECK REFRESH DRAFT 2.6.1 — CH2-FRESH MIN-5PP ZERO-REPEAT`.

---

## LOCK ADDENDUM (2026-05-31 — GOVERNANCE SYNC LOCK)

**Status:** **LOCKED** — all governance files synced to Ch. 2 manuscript checkpoint.

| Item | Value |
|------|--------|
| Lock date | 2026-05-31 |
| Session lock | `TOC/CH02-SESSION-SAVE-LOCK.md` |
| Forward map | `00-FORWARD-MAP.yaml` → `next_subsection: "2.6.1"` |
| Progress tracker | `progress.md` |
| GCHECK master | `TOC/GCHECK-MASTER-CUMULATIVE.md` §4 updated |
| Fresh restart | `TOC/CH02-FRESH-RESTART-LOCK.md` §5 updated |
| Start pointer | `START-HERE.md` |
| Manuscript drafted through | **§2.6 intro** (`sec:ch26`) |
| Build | `latex/main.pdf` — **219 pages** (exit 0) |
| Ch. 1 | **COMPLETE_LOCKED** — no prose edits without unlock |

**Author close:** File → Save All → close Cursor (see `TOC/END-OF-SESSION-PROTOCOL-LOCK.md`).

---

## LOCK ADDENDUM (2026-05-31 — SUMMER BREAK / PHYSICAL REVIEW)

**Status:** **LOCKED** — Ch. 1–2 manuscript frozen; physical review pack prepared; resume Ch. 3 **2026-06-06**.

| Item | Value |
|------|--------|
| Break | 5 days from 2026-05-31 |
| Return | **Friday 2026-06-06** |
| Review PDF | `review/Volume-I-Physical-Review-2026-05-31.pdf` (293 pp) |
| Review guide | `review/README-PHYSICAL-REVIEW.md` |
| Notes template | `review/author-margin-notes-TEMPLATE.md` |
| Build verified | `latex/main.pdf` — exit 0, 2026-05-31 |
| Ch. 1–2 | **COMPLETE_LOCKED** — margin notes only until unlock |
| Next draft | **§3.0.1** after return |

**Resume command (2026-06-06):** `GCHECK REFRESH DRAFT 3.0.1 — CH3-FRESH MIN-5PP ZERO-REPEAT`

---

## LOCK ADDENDUM (2026-05-31 — CHAPTER 2 COMPLETE AND LOCKED)

**Status:** Chapter 2 manuscript **COMPLETE AND LOCKED** — audit-fix pass signed off; Ch. 3 drafting authorized.

| Item | Value |
|------|--------|
| Sign-off lock | `TOC/CH02-MANUSCRIPT-SIGNOFF-LOCK.md` |
| Manuscript | `latex/ch02.tex` — **45/45 subsections** (§2.0.1–§2.11.3) |
| Audit-fix pass | **COMPLETE** (P0–P3) |
| Build | `latex/main.pdf` — **293 pages** (exit 0) |
| Forward map | `00-FORWARD-MAP.yaml` → `status: COMPLETE_LOCKED`; `next_subsection: "3.0.1"` |
| Ch. 1 | **COMPLETE_LOCKED** — no prose edits without unlock |
| Ch. 2 | **COMPLETE_LOCKED** — no prose/equation edits without unlock |
| Next draft | **§3.0.1** Symmetry, operators, and representations |

**Resume command:** `GCHECK REFRESH DRAFT 3.0.1 — CH3-FRESH MIN-5PP ZERO-REPEAT`

*Baseline locked. Ch. 2 locked. Resume Chapter 3 at §3.0.1.*

---

## LOCK ADDENDUM (2026-06-07 — CHAPTER 1 FORENSIC RE-LOCK)

**Status:** Chapter 1 manuscript **COMPLETE AND RE-LOCKED** — forensic architectural edit + narrative elevation signed off; Ch. 3 §3.0.1 authorized.

| Item | Value |
|------|--------|
| Sign-off lock | `TOC/CH01-MANUSCRIPT-SIGNOFF-LOCK.md` |
| Forensic program | `TOC/CH01-FORENSIC-EDIT-PROGRAM-LOCK.md` — **RE-LOCKED** |
| Architectural notebook | `TOC/CH01-ARCHITECTURAL-CORRECTIONS-NOTEBOOK.md` — **COMPLETE** |
| Manuscript | `latex/ch01.tex` — **32/32 subsections**; unlock forbidden without author directive |
| Build | `latex/main.pdf` — **301 pages** (exit 0) |
| Forward map | `00-FORWARD-MAP.yaml` → `chapter_1.status: COMPLETE_LOCKED` |
| Ch. 1 | **COMPLETE_LOCKED** — figure layout polish AUTHOR-DEFERRED only |
| Ch. 2 | **COMPLETE_LOCKED** — unchanged |
| Next draft | **§3.0.1** Symmetry, operators, and representations |

**Resume command:** `GCHECK REFRESH DRAFT 3.0.1 — CH3-FRESH MIN-5PP ZERO-REPEAT`

*Ch. 1 re-locked. Ch. 2 locked. Resume Chapter 3 at §3.0.1.*

---

## LOCK ADDENDUM (2026-05-29 — CHAPTER 2 ACCEPTED; CHAPTER 3 KICKOFF)

**Status:** Ch. 2 forensic remediation **PHYSICALLY ACCEPTED AND LOCKED**; Ch. 3 drafting **IN PROGRESS**.

| Item | Value |
|------|--------|
| Ch. 2 acceptance | Physical review complete; remediation locked |
| Ch. 2 PDF | `latex/main.pdf` — **299 pages** (post-remediation) |
| Ch. 2 sign-off | `TOC/CH02-MANUSCRIPT-SIGNOFF-LOCK.md` — unchanged lock |
| Ch. 3 kickoff | `TOC/CH03-DRAFTING-KICKOFF-LOCK.md` |
| Forward map | `chapter_2.physical_review_accepted: 2026-05-29`; `chapter_3.status: DRAFTING_IN_PROGRESS` |
| Manuscript | `latex/ch03.tex` — §3.0 framing + §3.0.1 drafted |
| Next draft | **§3.0.2** Eigenfield expansions of radiative fields |

**Resume command:** `GCHECK REFRESH DRAFT 3.0.2 — CH3-FRESH MIN-5PP ZERO-REPEAT`

*Ch. 1–2 frozen. Ch. 3 active at §3.0.2 after §3.0.1 approval.*

---

## LOCK ADDENDUM (2026-05-29 — CHAPTER 3 FORENSIC AUDIT REMEDIATED)

**Status:** Ch. 3 manuscript **COMPLETE DRAFT + FORENSIC REMEDIATION** (Priorities A–E, F1–F4).

| Item | Value |
|------|--------|
| Remediation lock | `TOC/CH03-FORENSIC-AUDIT-REMEDIATION-LOCK.md` |
| Session save | `TOC/CH03-SESSION-SAVE-LOCK.md` |
| Manuscript | `latex/ch03.tex` — §3.0–§3.11.3 remediated |
| New anchors | `prin:ch3.osr-separation`, `thm:ch3.symmetry-commutes`, `thm:ch3.expansion-consistency`, `def:ch3.R-adm`, `fig:ch3.report-chain-commutative-diagram` |
| Ch. 4 handoff | `latex/ch04.tex` §4.0.1 cites `def:ch3.R-adm` |
| PDF | `latex/main.pdf` — **533 pages** (build exit 0) |

**Resume command:** `GCHECK DRAFT 4.0` — Ch. 4 bulk kickoff

*Ch. 1–2 frozen. Ch. 3 remediated. Resume Chapter 4 at §4.0.1.*

---

## LOCK ADDENDUM (2026-06-08 — CHAPTER 4 DRAFTING KICKOFF)

**Status:** Ch. 4 **AUTHORIZED** — drafting doctrine locked.

| Item | Value |
|------|--------|
| Kickoff lock | `TOC/CH04-DRAFTING-KICKOFF-LOCK.md` |
| Doctrine | Peer register, inevitability arc, hidden scaffolding, §4.0 compressed, §4.1+ ≥ 5 pp |
| Manuscript | `latex/ch04.tex` — §4.0.1 stub **non-compliant** (purge before draft) |
| Originality | Ch. 4 coinage: spectral compression, radiative rank, effective EM dimension, accessibility envelope |

**Resume command:** `GCHECK DRAFT 4.0.1 — CH4-PEER INEVITAB MIN-5PP ZERO-SCAFFOLD`

*Ch. 1–3 frozen. Ch. 4 active at §4.0.1.*

---

## LOCK ADDENDUM (2026-05-29 — CHAPTER 3 MONOGRAPH COMPRESSION)

**Status:** Ch. 3 **monograph compression pass** complete (OSR backbone, landmark theorems, scaffolding reduction).

| Item | Value |
|------|--------|
| Compression lock | `TOC/CH03-MONOGRAPH-COMPRESSION-LOCK.md` |
| §3.0 | ~20–25% prose reduction; OSR thesis in opening |
| Tone | Peer register; inheritance reminders trimmed |
| PDF | Rebuild before Ch. 4 editing |

**Resume command:** `GCHECK DRAFT 4.0`
