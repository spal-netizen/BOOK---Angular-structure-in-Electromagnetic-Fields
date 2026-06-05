# Volume I — Physical Review Pack

**Prepared:** 2026-05-31  
**Return target:** **Friday 2026-06-06** (after 5-day break)  
**Build:** `scripts/Build-VolumeI-ChapterBib.ps1` → **exit 0**  
**Status:** Ch. 1 + Ch. 2 **LOCKED** for manuscript prose; Ch. 3–4 scaffold only  

---

## 1. PDF files (print from either)

| File | Role |
|------|------|
| `review/Volume-I-Physical-Review-2026-05-31.pdf` | **Review copy** — dated snapshot for printing |
| `latex/main.pdf` | **Live build** — same content after last `Build-VolumeI-ChapterBib.ps1` |

**Size:** ~4.3 MB · **293 PDF pages** (single-sided ≈ 293 sheets)

**Suggested print settings:** A4 or letter, single-sided for margin notes; 100% scale; embed fonts (default in this build).

---

## 2. Page map (PDF sheet numbers)

Use these **physical PDF page numbers** (bottom of Adobe Reader / SumatraPDF), not only running headers.

| Block | PDF pages (approx.) | Content status |
|-------|---------------------|----------------|
| Front matter | 1–12 | Title, TOC, preface shell |
| **Chapter 1** | 13–111 | **COMPLETE AND LOCKED** (32 subsections) |
| **Chapter 2** | 112–275 | **COMPLETE AND LOCKED** (45 subsections) |
| Chapter 3 | 276–278 | **Scaffold only** — do not review as draft |
| Chapter 4 | 279–281 | **Scaffold only** |
| Back matter / appendix shell | 282–293 | Notation placeholder |

### Chapter 2 landmarks (for spot review)

| Section | Topic | Suggested focus |
|---------|--------|-----------------|
| §2.0 | Introduction, operator map | Table: operator symbol survival |
| §2.2.4 | Spectral projectors | Box: effective `\Pi_{\mathrm{rad}}` definition |
| §2.7 | Null spaces, NR, evanescent | Realizability vs accessibility (§2.7.4) |
| §2.10 | Examples | DOF diagnostic suite + master partition |
| §2.11 | Inheritance | Results ledger + validity regime tables |

---

## 3. Author review checklist (margin notes welcome)

Mark gaps in a separate notebook or on printed sheets using this code:

| Code | Meaning |
|------|---------|
| **G** | Gap — needs expansion or missing step |
| **D** | Doubt — physics/math needs your verification |
| **C** | Citation — needs seminal source or better placement |
| **F** | Figure — schematic unclear or missing |
| **N** | Notation — symbol clash or undefined term |
| **U** | Unlock — requires Ch. 1/2 unlock to edit |

### Priority review zones (Ch. 2 audit-sensitive)

1. **§2.0.3** — Operator symbol survival table vs your intended notation  
2. **§2.2.4** — `\Pi_{\mathrm{rad}}=\mathcal{O}_{\mathrm{out}}\circ\Pi_{\mathrm{prop}}` box  
3. **§2.7.4** — Realizability / accessibility / nullity paragraph  
4. **§2.10** — Four examples as DOF suite; illustrative numerics flagged  
5. **§2.11.1–§2.11.2** — Ledger and validity tables  
6. **Ch. 1 ↔ Ch. 2 ↔ Ch. 3** — Forward references (`sec:ch343`, `sec:ch352`, `sec:ch313`)

### Known non-blocking build notes (no action for break)

- Duplicate label `sec:ch311` in Ch. 3 scaffold (warning only)  
- Minor overfull hbox warnings in Ch. 1–2 tables  
- Ch. 1 figure **layout polish** still author-deferred  

---

## 4. What is frozen vs open

| Item | Policy |
|------|--------|
| `latex/ch01.tex` | **LOCKED** — unlock only with manifest entry |
| `latex/ch02.tex` | **LOCKED** — unlock only with manifest entry |
| `latex/ch03.tex`, `ch04.tex` | Open for drafting **after return** |
| Governance / TOC | Locked — change only with author approval |

Your margin notes from this review become the **author correction backlog** applied before or during Ch. 3 drafting (unlock + targeted fixes).

---

## 5. On return (Friday 2026-06-06)

1. Open `START-HERE.md`  
2. Bring margin notes / gap list  
3. Issue unlock requests for any Ch. 1–2 fixes needed  
4. Start Ch. 3:

```text
GCHECK REFRESH DRAFT 3.0.1 — CH3-FRESH MIN-5PP ZERO-REPEAT
```

**Ch. 3–4 standard:** Same governance as Ch. 2 — GCHECK cumulative stack, HOME/USE/DEFER, ~5 PDF pages per subsection, sentence-local citations, no recursion, classical monograph tone.

---

## 6. Optional: structured note template

Copy to `review/author-margin-notes-2026-06.md` as you review:

```markdown
# Author margin notes — Volume I physical review

## Chapter 1
- [ ] §1.x.x — (G/D/C/F/N/U) note...

## Chapter 2
- [ ] §2.x.x — (G/D/C/F/N/U) note...

## Global
- [ ] Notation / forward map / deferred topics...
```

---

*End physical review pack — enjoy the break.*
