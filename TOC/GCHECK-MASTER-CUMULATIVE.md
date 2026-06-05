# GCHECK Master Cumulative Lock (Volume I)

**Status:** **LOCKED**  
**Lock date:** 2026-05-29  
**Effective:** 2026-05-29  
**Authority:** Canonical zero-deviation checklist for all Volume I drafting (`GCHECK <subsection-id>`).  
**Policy:** Cumulative — new instructions refine this set; essential prior locks are never silently removed. Amendments require explicit author unlock note in `progress.md` and matching addendum in `LOCK-MANIFEST.md`.  
**Zero-deviation rule:** Any drafting or editing action that violates an item below is **non-compliant** until corrected.

---

## 1. GCHECK command (mandatory before every draft/edit)

```text
GCHECK <subsection-id>
```

Example: `GCHECK 2.0.1`

### Author expanded draft command (copy-paste before every subsection)

Use this **full command** when you want zero deviation, zero Ch.~1 recursion, and **strictly 5 PDF pages** enforced in one instruction:

```text
GCHECK DRAFT <subsection-id>
```

**Example:** `GCHECK DRAFT 2.0.2`

**Meaning (mandatory agent execution order):**

1. Read and apply, in order: `LOCK-MANIFEST.md` → `TOC/GCHECK-MASTER-CUMULATIVE.md` → `.cursor/rules/book-consistency.mdc` → `TOC/SUBSECTION-DRAFTING-CONTRACT-ULTIMATE.md` → `TOC/CITATION-CONTRACT-ULTIMATE.md` → `TOC/NO-RECURSION-AUDIT-PASS-ULTIMATE.md` → `00-NOTATION.md` → `00-FORWARD-MAP.yaml` → active chapter TOC audit file (Ch.~2: `CH02-TOC-AUDIT-FLOW-LOCK.md`; Ch.~3: `CH03-TOC-AUDIT-FLOW-LOCK.md`) → `TOC/volume-I-ch01-04-FINAL.txt` line for `<subsection-id>` → `latex/chNN.tex` scaffold.
2. **Zero deviation:** draft only the requested subsection; section-first if new section; line-by-line forward order; no TOC skip.
3. **Zero repetition / zero recursion:** do not re-display or re-prove any Ch.~1 (or prior) HOME equation, definition, or proof — **USE by `\ref` / `\eqref` / citation only**; honor `forbidden_repeat` in `00-FORWARD-MAP.yaml`.
4. **Depth lock:** target **strictly 5 PDF book pages** for the subsection body (match Ch.~1 subsection density); full math+physics narration from accessible entry to major results; define every symbol at first use; operand-level → full-equation → physical explanation for each major equation block.
5. **Prose lock:** Version A classical monograph tone only; science-centric student-friendly expert prose; unique opening/closing and unique sentence architecture; no bullets, no governance/TOC vocabulary, no template starters.
6. **Citations:** claim-local; seminal → classical → modern; keys from `latex/references.bib` only.
7. **Figures (if used):** label + caption + in-body interpretation; schematic only.
8. Rebuild `latex/main.pdf` via `scripts/Build-VolumeI-ChapterBib.ps1` after edit; report page count for the new subsection.

Shorthand `GCHECK <subsection-id>` (without `DRAFT`) triggers the same read-set; append **`DRAFT`** when you want explicit **5-page + execute drafting** in one command.

### Author FRESH RESTART command (LOCKED 2026-05-29 — **ACTIVE** for Ch. 2)

Redraft Ch. 2 **from Section 2.0** with memory refresh, anti-fatigue guards, and **≥ 5 PDF pages** per subsection:

```text
GCHECK REFRESH DRAFT <subsection-id> — CH2-FRESH MIN-5PP ZERO-REPEAT
```

**First (Section 2.0 intro):** `GCHECK REFRESH DRAFT 2.0 — CH2-FRESH MIN-5PP ZERO-REPEAT`  
**Each next:** `GCHECK REFRESH DRAFT NEXT — CH2-FRESH MIN-5PP ZERO-REPEAT`

| Flag | Meaning |
|------|---------|
| `REFRESH` | Re-read all 13 GCHECK files; re-scan Ch. 1 `\label`s (USE only) and Ch. 2 prior prose; context reset before write |
| `CH2-FRESH` | Rewrite subsection from scratch — no recycled sentences or template molds |
| `MIN-5PP` | Body **≥ 5 PDF book pages** after build; expand if short |
| `ZERO-REPEAT` | Prior HOME: `\ref`/`\eqref`/cite only; honor `forbidden_repeat` |

**Authority:** `TOC/CH02-FRESH-RESTART-LOCK.md` — anti-fatigue checklist mandatory.

### Author continuous Ch. 2 command (LEGACY — superseded by CH2-FRESH)

```text
GCHECK DRAFT NEXT — CH2-CONTINUOUS ZERO-REPEAT
```

| Flag | Meaning |
|------|---------|
| `NEXT` | Draft next TOC subsection in order (see `TOC/CH02-SESSION-SAVE-LOCK.md`) |
| `CH2-CONTINUOUS` | No stop-for-review until chapter end (author audits at Ch. 2 complete) |
| `ZERO-REPEAT` | Full GCHECK read-set + no re-display/re-prove of prior HOME content |

**Session end:** follow `TOC/END-OF-SESSION-PROTOCOL-LOCK.md` — author **File → Save All** → close Cursor.

### Read-before-draft (in order)

| # | File | Role |
|---|------|------|
| 1 | `LOCK-MANIFEST.md` | Master lock + addenda |
| 2 | `TOC/GCHECK-MASTER-CUMULATIVE.md` | This file — zero-deviation checklist |
| 3 | `.cursor/rules/book-consistency.mdc` | AI always-on rules |
| 4 | `TOC/SUBSECTION-DRAFTING-CONTRACT-ULTIMATE.md` | Subsection structure + depth |
| 5 | `TOC/CITATION-CONTRACT-ULTIMATE.md` | Citation placement + source order |
| 6 | `TOC/NO-RECURSION-AUDIT-PASS-ULTIMATE.md` | HOME/USE audit |
| 7 | `00-NOTATION.md` | Symbols, units, phasor convention |
| 8 | `00-FORWARD-MAP.yaml` | HOME / USE / DEFER / forbidden_repeat |
| 9 | `TOC/THEOREM-HOME-MATRIX-19CH-ULTIMATE.md` | Theorem ownership |
| 10 | Active chapter `.tex` + `TOC/volume-I-ch01-04-FINAL.txt` line for subsection |
| 11 | `TOC/CH02-TOC-AUDIT-FLOW-LOCK.md` | Ch. 2 TOC flow (when drafting Ch. 2+) |
| 12 | `TOC/CH01-TOC-SIGNOFF-LOCK.md` | Ch. 1 TOC sign-off (reference) |
| 13 | `TOC/CH03-TOC-AUDIT-FLOW-LOCK.md` | Ch. 3 TOC flow (when drafting Ch. 3+) |

Optional when depth/citation/model workflow applies: `MODEL-WORKFLOW-LOCKED.md`, `TOC/CH01-CONTROLLED-DEPTH-EXPANSION-PLAN.md` (Ch. 1 reference pattern only).

---

## 2. Zero-deviation drafting rules (all chapters)

### 2.1 Forward progression

- Draft **strictly forward** in TOC order; **line-by-line** / **subsection-by-subsection** author approval before advancing.
- **Section-first:** section intro → subsections in order → section summative bridge.
- **No recursion:** equations, proofs, definitions, and concept chains established in prior subsections/sections/chapters are **USE by `\ref` / citation only** — never re-derived or re-numbered.
- Honor `forbidden_repeat` in `00-FORWARD-MAP.yaml` for the active chapter.
- Deferred concepts appear **only** in inheritance sections (§1.7, §2.11, §3.11, §4.11) unless TOC assigns a new HOME.

### 2.2 Definitions, notation, variables

- **Every** symbol, operator, domain qualifier, geometric element, and index in **every** equation: defined at **first appearance** in running prose.
- Notation must match `00-NOTATION.md`; new symbols require manifest/notation update before use.
- **Complete statements:** laws, theorems, propositions, criteria, and admissibility indices must be stated with explicit assumptions and validity domain before use.

### 2.3 Equations

- Chapter-wise **monotone** numbering: `(n.1), (n.2), …` and references `[n.1], [n.2], …`.
- Number **major** relations only; inline/unnumbered for small definitions and intermediate steps.
- **No re-display** of prior numbered equations; inherit via `\eqref{eq:…}` or prose reference.
- Each major equation block: **operand-level** math explanation → **full-equation** function → **physical** interpretation (varied prose, not template).

### 2.4 Prose uniqueness (ZERO template repetition)

- **Version A — Classical Monograph Tone** only.
- **Unique** opening and closing paragraphs per subsection; **unique** sentence architecture across sibling subsections — even when cases are similar.
- **Banned in manuscript body:** bullet-list exposition; architecture/drafting/TOC/governance vocabulary (`HOME`, `USE`, `gate`, `contract`, `filter`, `ownership` as prose); title-head metacommentary; formulaic starters (`This subsection establishes …`, `For physical interpretation …`, etc.).
- Paragraphs must be **science-centric** and **student-comprehension-centric** (assumptions, validity, measurement meaning).

### 2.5 Citations

- Place citation **exactly at the claim sentence** (law, theorem, proven step, nontrivial technical assertion).
- **Order:** originator/seminal/pioneering → classical canonical monograph → validated modern (when needed).
- Use keys from `latex/references.bib` or mark `[CITATION NEEDED]`; never invent references.
- Chapter 1 body precedent: seminal keys only in running cites (`maxwell1873`, `poynting1884`, `stratton1941`, `belinfante1940`, `beth1936`, `allen1992`, `chu1948`, `abraham1910`, `minkowski1908`); Ch. 2+ follows same hierarchy with chapter-appropriate keys.

### 2.6 Figures

- Chapter-wise figure numbering; every figure: `\label{fig:ch…}`, **caption**, **in-body interpretation** (math + physical meaning).
- Schematic only; purpose-driven (theorem/concept/worked-problem geometry).
- `[FIG+PROB]` (§1.6, §2.10, §3.10, §4.10): **Problem** + figure + **all math steps** + physical meaning per step.
- **Ch. 1 figure visual polish:** author may revise layout later; content/coverage/labels locked; do not regress figure count or caption discipline.

### 2.7 Worked examples and new concepts

- Every `\paragraph{Worked problem:…}` block: setup figure (when TOC/tags require), full derivation, numeric/interpretive closure with sufficient explanations for each step where applicable.
- **New law, theorem, proven concept, or allied technical construct** introduced in a chapter must occupy its **assigned HOME subsection** in TOC; if TOC lacks a home, **propose new subsection/section** in governance before drafting — do not embed as undifferentiated prose.
- Subsection **heading** must be explicitly defined and explained with respect to global Maxwellian electrodynamics perspective in detail, in a student-friendly manner, through subject-expert eloquent tone in prose.

### 2.8 Depth

- Default target: **strictly 5 PDF pages** per subsection (author may request ~5-7 page target for core subsections).
- Substantial derivation depth from accessible entry assumptions to major results; no narrative-only core sections.

---

## 3. Chapter 1 — COMPLETE AND LOCKED (2026-05-29)

| Item | Status |
|------|--------|
| Manuscript | `latex/ch01.tex` — 32 subsections §1.0.1–§1.7.3 |
| Build | `scripts/Build-VolumeI-ChapterBib.ps1` → `latex/main.pdf` |
| Equations | ~100 labeled `eq:ch1.*` |
| Figures | 68 TikZ (`fig:ch1.*`); 48/48 worked problems covered |
| No-recursion audit | **PASS** — see `TOC/NO-RECURSION-AUDIT-PASS-ULTIMATE.md` |
| Figure layout polish | **AUTHOR-DEFERRED** — content locked; visual spacing to be corrected by author |

**Do not edit Ch. 1 prose/equations** except explicit author unlock or typo fix with governance note in `progress.md`.

---

## 4. Chapter 2 — FRESH RESTART (LOCKED 2026-05-29; progress sync 2026-05-31)

| Item | Value |
|------|--------|
| Restart lock | `TOC/CH02-FRESH-RESTART-LOCK.md` — **LOCKED** |
| Session lock | `TOC/CH02-SESSION-SAVE-LOCK.md` — **LOCKED 2026-05-31** |
| **Drafted through** | **§2.6 intro** (`sec:ch26`) |
| **Next subsection** | **§2.6.1** Eigenfunctions and spectral decomposition `[HOME]` |
| **Master command** | `GCHECK REFRESH DRAFT 2.6.1 — CH2-FRESH MIN-5PP ZERO-REPEAT` |
| Depth | **≥ 5 PDF pages** per subsection (mandatory) |
| Inheritance | **USE Ch. 1 by `\ref` only** — `forbidden_repeat` enforced |
| Review | Chapter-end audit (author) |
| Build | `main.pdf` — **219 pages** (exit 0, 2026-05-31) |

**Completed blocks (fresh pass):** §2.0–§2.4; §2.5 intro + §2.5.1–§2.5.4 + summative bridge; §2.6 intro.

**Legacy command** (continue without fresh rewrite): `GCHECK DRAFT NEXT — CH2-CONTINUOUS ZERO-REPEAT` — **inactive**.

---

## 5. Pre-submission checklist (per subsection)

- [ ] GCHECK files read and applied  
- [ ] TOC tag honored (`HOME` / `USE` / `DEFER`)  
- [ ] No forbidden repeat from `00-FORWARD-MAP.yaml`  
- [ ] All symbols defined at first use  
- [ ] Major equations explained (math + physics)  
- [ ] Citations at claim; seminal-first  
- [ ] Unique subsection opening/closing prose  
- [ ] Section intro/bridge if new section  
- [ ] Figures (if any): label, caption, in-body discussion  
- [ ] No governance vocabulary in body text  
- [ ] Build succeeds after edit  

---

**END OF LOCKED DOCUMENT** — `TOC/GCHECK-MASTER-CUMULATIVE.md` — **LOCKED 2026-05-29** (Ch. 2 progress sync **2026-05-31**)
