# Chapter 2 — Fresh Restart Lock

**Status:** **LOCKED**  
**Lock date:** 2026-05-29 (author directive)  
**Authority:** Supersedes resume-at-§2.0.3; Ch. 2 redrafted **from the beginning**  
**Prior session drafts:** §2.0 intro + §2.0.1 + §2.0.2 in `latex/ch02.tex` are **superseded** — replace with fresh passes under new command  

---

## 1. Author directive (locked)

| Requirement | Rule |
|-------------|------|
| Start point | **Section 2.0** intro framing → §2.0.1 → §2.0.2 → … forward |
| Draft type | **Fresh draft** each subsection (no copy-paste from prior AI pass) |
| Depth | **≥ 5 PDF book pages** per subsection body (expand until met) |
| Ch. 1 content | **Reference only** in narration (`\ref`, `\eqref`, cite) — no re-display, no re-proof |
| Ch. 2 prior subsections | **USE by ref** once established; no re-display within chapter |
| Anti-fatigue | Full GCHECK read-set **before every** subsection; grep audit for template repetition |
| Review | Chapter-end audit (author) |

---

## 2. Master command (copy-paste before every subsection)

### First subsection (Section 2.0 intro)

```text
GCHECK REFRESH DRAFT 2.0 — CH2-FRESH MIN-5PP ZERO-REPEAT
```

### Each subsequent subsection

```text
GCHECK REFRESH DRAFT NEXT — CH2-FRESH MIN-5PP ZERO-REPEAT
```

### Explicit subsection id

```text
GCHECK REFRESH DRAFT <subsection-id> — CH2-FRESH MIN-5PP ZERO-REPEAT
```

**Example:** `GCHECK REFRESH DRAFT 2.0.1 — CH2-FRESH MIN-5PP ZERO-REPEAT`

---

## 3. Flag meanings (mandatory agent execution)

| Flag | Binding |
|------|---------|
| `REFRESH` | Re-read **all 13** GCHECK files in order; re-scan `latex/ch01.tex` labels (USE only); re-scan `latex/ch02.tex` drafted prose; **pause for context** before writing |
| `DRAFT` | Execute fresh prose in `latex/ch02.tex` only |
| `CH2-FRESH` | Rewrite target subsection from scratch; do not recycle prior subsection sentences or equation-explanation templates |
| `MIN-5PP` | Subsection body **≥ 5 PDF pages** after build; expand if short |
| `ZERO-REPEAT` | No recursion: Ch. 1 HOME → cite only; honor `forbidden_repeat`; no duplicate eq blocks, figures, or prose molds |

---

## 4. Anti–machine-fatigue checklist (before writing)

1. Read `TOC/NO-RECURSION-AUDIT-PASS-ULTIMATE.md` checklist.  
2. Grep target subsection neighborhood in `latex/ch02.tex` for repeated openers (`This subsection`, `For physical`, `It follows that`).  
3. Grep for re-displayed `eq:ch1.*` equation environments in Ch. 2 (must be zero).  
4. Confirm unique opening/closing architecture vs. **previous** Ch. 2 subsection.  
5. Draft only after TOC line + tag confirmed in `volume-I-ch01-04-FINAL.txt`.

---

## 5. Draft order (progress sync 2026-05-31)

| Block | Status |
|-------|--------|
| §2.0–§2.4 | **DRAFTED** (fresh pass) |
| §2.5 intro + §2.5.1–§2.5.4 | **DRAFTED** + §2.5 summative bridge |
| §2.6 intro | **DRAFTED** |
| **§2.6.1–§2.6.4** | **NEXT** |
| §2.7–§2.11 | pending |

**Next fresh draft:** **§2.6.1** Eigenfunctions and spectral decomposition.

```text
GCHECK REFRESH DRAFT 2.6.1 — CH2-FRESH MIN-5PP ZERO-REPEAT
```

---

## 6. AI tool roles (author workflow — not manuscript prose)

Per `MODEL-WORKFLOW-LOCKED.md` + author stack:

| Role | Tool / model class | Use |
|------|-------------------|-----|
| **Primary drafting agent** | **Cursor Agent** (Claude / Composer) with repo + GCHECK | LaTeX prose, `\ref`-only inheritance, build |
| **Final rigor pass** | High-reasoning model (Opus-class) | Theorem chains, acceptance gate |
| **Infrastructure** | Codex / GPT coding agent | Build, grep audits, governance sync |
| **Optional external** | ChatGPT / Claude web (frontier) | Outline stress-test, literature sanity — **never** paste into manuscript without bib keys |
| **Formal verification (future)** | Lean / M2F-style pipelines | Proof audit only — not Vol. I prose source |
| **Human-in-the-loop** | Author | Chapter-end audit; GCHECK command issue |

Research systems (CoAuthorAI, textbook formalization agents) confirm: **long-form math books require human-in-the-loop + locked governance** — this repo's GCHECK stack is the control plane.

---

**END OF FRESH RESTART LOCK** — progress sync **2026-05-31**
