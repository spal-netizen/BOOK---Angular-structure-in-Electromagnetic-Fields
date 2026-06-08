# Chapter 1 — Full Forensic Audit (Ultimate Pass)

**Audit date:** 2026-06-07  
**Manuscript:** `latex/ch01.tex` (32 subsections, 100 numbered equations, 68 TikZ figures)  
**Build:** `latex/main.pdf` — **301 pages**, exit 0  
**Lock status:** `COMPLETE_LOCKED` per `TOC/CH01-MANUSCRIPT-SIGNOFF-LOCK.md`  
**Authority:** `TOC/NO-RECURSION-AUDIT-PASS-ULTIMATE.md`, `TOC/CITATION-CONTRACT-ULTIMATE.md`, `00-NOTATION.md`, `00-FORWARD-MAP.yaml`

---

## 1. Executive verdict

| Overall | Result |
|---------|--------|
| **Architectural integrity** | **PASS — STRONG** |
| **No-recursion / HOME–USE discipline** | **PASS** |
| **Citation placement & seminal hierarchy** | **CONDITIONAL PASS** (1 key violation) |
| **Notation / symbol uniformity** | **PASS — MINOR FLAGS** |
| **Equation / law repetition** | **PASS** |
| **Prose uniqueness (openings / closings / rhythm)** | **PARTIAL PASS** |
| **Physical narration & observable examples** | **PASS — UNEVEN** |
| **Timeless monograph bar (author criteria)** | **CONDITIONAL PASS** |

**Summary judgment:** Chapter 1 is **scientifically sound, architecturally coherent, and lock-worthy** for Volume I forward progression. It does **not yet achieve literal “zero deviation”** on sentence-template uniqueness across all 32 subsection openings—an aspirational bar that would require a dedicated **Prose Uniqueness Pass** (optional unlock). No P0 blocker prevents Ch. 3 drafting; one P1 citation fix and selective prose diversification are recommended before publisher inquiry.

---

## 2. Audit methodology

1. Full read of §1.0–§1.7 against `TOC/SUBSECTION-DRAFTING-CONTRACT-ULTIMATE.md`.  
2. Automated scans: equation labels, `\cite{}` key frequency, template phrases, `\emph{…} names` openers, `Subsection~\ref` back-reference openers.  
3. Cross-check `00-FORWARD-MAP.yaml` `forbidden_repeat` (Ch. 1 establishes; Ch. 2+ must USE).  
4. Notation cross-check: `latex/macros.tex`, `00-NOTATION.md`, spot `\mathbf{E}` vs `\E`.  
5. Section-first framing: intro paragraph + summative bridge per §1.0–§1.7.  
6. Citation contract: seminal keys only in Ch. 1 body per locked set.

---

## 3. Dimension A — Architectural framework

**Verdict: PASS — STRONG**

| Element | Status | Evidence |
|---------|--------|----------|
| Three-level hierarchy | ✓ | `fig:ch1.three-level-hierarchy`; §1.0 narrative |
| Four-class taxonomy (admissible / realizable / accessible / transferable) | ✓ | §1.0 expanded paragraphs |
| Progressive elimination chain | ✓ | Maxwell-admissible → realizable → accessible → transferable |
| Accessibility vs realizability narrative | ✓ | §1.0, §1.5, §1.7 |
| Volume I inevitability (Ch. 2 must exist) | ✓ | §1.0 `Why Chapter 2 must exist` |
| Three-screen criterion (prose) | ✓ | §1.0.1; `fig:ch1.scope-control-gate` |
| Master admissibility chain | ✓ | `eq:ch1.master-admissibility-chain` + Table corollaries |
| §1.7 inheritance / defer / bridge | ✓ | §1.7.1–§1.7.3 |
| Forward map to Ch. 2–4 | ✓ | No Ch. 5+ leakage |

**Strength:** The chapter reads as **ontology of angular EM structure**, not an OAM survey. Architecture is the monograph’s clearest long-term citation asset.

**Minor note:** §1.0 is dense (~8+ pages). Acceptable for a foundational chapter; consider author PDF margin check for pacing only.

---

## 4. Dimension B — Zero recursion / equation & law repetition

**Verdict: PASS**

| HOME anchor | Label | Re-display outside HOME? |
|-------------|-------|--------------------------|
| Maxwell local system | `eq:ch1.maxwell-local` | **No** — defined §1.1.1 only; 15+ `\eqref` elsewhere |
| Angular momentum balance | `eq:ch1.angular-momentum-balance` | **No** — HOME §1.1.5; cited only |
| Master admissibility | `eq:ch1.master-admissibility-chain` | **No** — HOME §1.2.4 closure; cited |
| Potential relations | `eq:ch1.potential-field-relations` | **No** — HOME §1.4.1 |
| Stress tensor | `eq:ch1.maxwell-stress` (etc.) | **No** — HOME §1.1.4; §1.5.2 USE |

| Metric | Value |
|--------|-------|
| `\begin{equation}` blocks | **100** |
| Unique `eq:ch1.*` labels | **100** (no duplicate labels) |
| `[CITATION NEEDED]` | **0** |
| Forbidden Ch. 2 re-derivations inside Ch. 1 | **None detected** |

**§1.5.2** correctly USEs §1.1.4 stress framework without re-deriving. **§1.6** problems USE inherited results by reference. **§1.7** ledger cites without reproving.

---

## 5. Dimension C — Citations (seminal, placement, appropriateness)

**Verdict: CONDITIONAL PASS**

### Citation frequency (body)

| Key | Count | Role | Audit |
|-----|-------|------|-------|
| `stratton1941` | 286 | Canonical EM | ✓ Appropriate; high density acceptable for Ch. 1 HOME |
| `belinfante1940` | 52 | Stress / spin-orbit | ✓ |
| `allen1992` | 41 | OAM beams (with caveats) | ✓ Placement generally at claim |
| `maxwell1873` | 40 | Field laws | ✓ |
| `poynting1884` | 38 | Flux | ✓ |
| `beth1936` | 33 | Torque experiment | ✓ |
| `harrington2001` | 27 | Sources / realizability | ✓ |
| `chu1948` | 16 | Admittance / limits | ✓ |
| `hansen1988` | 14 | Near-field measurement | ✓ |
| `hertz1888`, `sommerfeld1949`, `tai1994` | 1–2 | Historical lineage | ✓ At claim in §1.0 |
| **`jackson1999`** | **1** | **Textbook** | **✗ FAIL** — violates Ch. 1 locked citation set |

### Fail item (P1)

- **Line ~15 §1.0:** `\cite{...,jackson1999}` — textbook key in Ch. 1 body.  
  **Fix:** Remove `jackson1999`; retain `stratton1941` / `maxwell1873` at same sentence.

### Pass items

- No citation dumping at paragraph ends detected as systematic failure.  
- Seminal-first ordering observed at Maxwell, Poynting, Belinfante, Beth claims.  
- `harrington2001` / `hansen1988` correctly support realizability/accessibility (modern validated layer).

---

## 6. Dimension D — Notation / symbols / variables

**Verdict: PASS — MINOR FLAGS**

| Rule | Status |
|------|--------|
| Phasor fields `\E`, `\H`, `\Jimp` via macros | ✓ Dominant |
| `\exp(-\jj\omega t)` convention | ✓ Stated §1.1.1 |
| SI units | ✓ |
| Spherical unit vectors `\hat{\boldsymbol{\theta}}` | ✓ Consistent |
| Admissibility symbols `\mathcal{D}_*` | ✓ Monotone chapter-local |

### Minor flags (P2)

| Location | Issue |
|----------|-------|
| ~5563, 7150, 7399 | `\mathbf{E}`, `\mathbf{H}` literal vs macro `\E`, `\H` |
| ~2009, 2027 | Cavity-mode `\mathbf{E}_{mnp}` — acceptable (mode amplitude subscript) |

**Book-wide note:** `00-NOTATION.md` still shows underlined phasors in one display equation block while Ch. 1 uses bold macros — governance doc lag, not Ch. 1 manuscript error.

---

## 7. Dimension E — Prose uniqueness (style / rhythm / templates)

**Verdict: PARTIAL PASS** (literal “zero deviation” **not achieved**)

### E.1 Opening-paragraph taxonomy (32 subsections)

| Pattern | Count | Subsections | Audit |
|---------|-------|-------------|-------|
| **A.** `\emph{Term} names/fixes/means…` glossary | **~14** | §1.0.1, 1.0.2, 1.0.3, 1.1.2, 1.3.2, 1.3.4, 1.4.1–1.4.3, 1.5.2–1.5.3, 1.7.1–1.7.3 | Recognizable template cluster |
| **B.** `Subsections~\ref{…} fixed/established…` back-reference | **~6** | §1.1.4, 1.4.5, 1.4.4, 1.5.1, 1.2.3, 1.2.4 | Functional but rhythm-similar |
| **C.** Direct physics-first (no glossary) | **~8** | §1.1.1, 1.1.3, 1.1.5, 1.2.1, 1.2.2, 1.3.1, 1.3.3, 1.5.4 | **Model quality** |
| **D.** FIG+PROB problem statement | **4** | §1.6.1–1.6.4 | Correct format; unique setups |

**Finding:** Pass 4 intentionally introduced pattern **A** for title-component glossaries. It succeeds pedagogically but **violates strict zero-template uniqueness** when read sequentially across §1.3–§1.7.

### E.2 Section-level closures

All eight sections have summative `\paragraph{Section 1.X …}` bridges — **PASS** for NO-RECURSION checklist item 9.

Closure titles share rhythm: `summary and bridge`, `synthesis and bridge`, `closure and forward link`, `consolidation and handoff` — **minor template family** (P3).

### E.3 §1.6 worked-problem steps

`\emph{Step N---…}` + `\emph{Physical meaning:}` repeated **21×** across four problems — **intentional** for FIG+PROB contract but **template-heavy**. Acceptable under `[FIG+PROB]` tag; flag only if global zero-rhythm rule is absolute.

### E.4 Banned formulaic starters

| Phrase | Count |
|--------|-------|
| `This subsection establishes` | **0** ✓ |
| `For physical interpretation` | **0** ✓ |
| `CITATION NEEDED` | **0** ✓ |

---

## 8. Dimension F — Physical narration & observable examples

**Verdict: PASS — UNEVEN**

| Block | Physical depth | Observable / nature examples |
|-------|----------------|------------------------------|
| §1.0 | Excellent | 100→80→20→10 DOF illustration; accessibility tragedy |
| §1.1 | Strong | Cavity modes, enclosure flux |
| §1.2 | Strong | Directional flux, Poynting topology |
| §1.3 | Good | Dipole stress objectivity worked problem |
| §1.4 | Good | Beth / Belinfante lineage |
| §1.5 | Strong | Beth 1936, torsion balance, Hansen aperture |
| §1.6 | Excellent | Four complete FIG+PROB with geometry |
| §1.7 | Adequate | Ledger (by design compact) |

**Gap:** §1.4.4, §1.4.5 openings are experimenter-focused but lack a single concrete **natural-world** image (e.g., radio-telescope dish, solar corona loop) — optional enrichment only.

---

## 9. Dimension G — Timeless monograph criteria (author rubric)

| Criterion | Met? |
|-----------|------|
| Defines tomorrow’s questions | **Yes** — accessibility, realizability, effective dimension |
| Not an OAM monograph | **Yes** — foundational self-sufficiency paragraph |
| Four-class taxonomy durable | **Yes** |
| Representation ≠ physics | **Yes** — repeated theme |
| Finite geometry restricts complexity | **Yes** |
| Professors cite frameworks not derivations | **Likely** — taxonomy + progressive elimination |

---

## 10. Subsection opening quick matrix

| § | Opening mode | Unique? | Physical hook? |
|---|--------------|---------|----------------|
| 1.0.1 | Glossary A | ~ | ✓ |
| 1.0.2 | Glossary A | ~ | ✓ |
| 1.0.3 | Glossary A | ~ | ✓ |
| 1.1.1 | Physics C | ✓ | ✓ |
| 1.1.2 | Glossary A | ~ | ✓ |
| 1.1.3 | Physics C | ✓ | ✓ |
| 1.1.4 | Back-ref B | ~ | ✓ |
| 1.1.5 | Physics C | ✓ | ✓ |
| 1.2.1 | Physics C | ✓ | ✓ |
| 1.2.2 | Physics C | ✓ | ✓ |
| 1.2.3 | Back-ref B | ~ | ✓ |
| 1.2.4 | Back-ref B | ~ | ✓ |
| 1.3.1 | Physics C | ✓ | ✓ |
| 1.3.2 | Glossary A | ~ | ✓ |
| 1.3.3 | Physics C | ✓ | ✓ |
| 1.3.4 | Glossary A | ~ | ✓ |
| 1.4.1 | Glossary A | ~ | ✓ |
| 1.4.2 | Glossary A | ~ | ✓ |
| 1.4.3 | Glossary A | ~ | ✓ |
| 1.4.4 | Back-ref B | ~ | ✓ |
| 1.4.5 | Back-ref B | ~ | ✓ |
| 1.5.1 | Back-ref B | ~ | ✓ |
| 1.5.2 | Glossary A | ~ | ✓ |
| 1.5.3 | Glossary A | ~ | ✓ |
| 1.5.4 | Physics C | ✓ | ✓ |
| 1.6.1–4 | Problem D | ✓ | ✓✓ |
| 1.7.1–3 | Glossary A | ~ | ✓ |

**Legend:** ✓ = distinct; ~ = template-family similar; ✓✓ = exemplary

---

## 11. Remediation roadmap (if author requests unlock)

| Priority | Item | Effort | Unlock? |
|----------|------|--------|---------|
| **P1** | Remove `jackson1999` from §1.0 line 15 | 1 min | Optional micro-unlock |
| **P2** | Diversify 6 back-reference openers (§1.1.4, 1.2.3–4, 1.4.4–5, 1.5.1) | 1–2 hr | Prose pass |
| **P2** | Vary 8 glossary openers (keep content, change syntax) | 2–3 hr | Prose pass |
| **P2** | Harmonize `\mathbf{E}` → `\E` (4 lines) | 15 min | Micro-unlock |
| **P3** | Vary §1.6 step/physical-meaning phrasing across 4 problems | 2 hr | Optional |
| **P3** | Rename section-bridge `\paragraph{}` titles for rhythm diversity | 30 min | Optional |
| **P3** | Sync `00-NOTATION.md` underline vs bold display block | 10 min | Governance |

**Recommended command if author approves fixes:**  
`GCHECK UNLOCK CH01-PROSE-UNIQUENESS-PASS — P1-P2 ONLY`

**Remediation status (2026-05-29):** **COMPLETE** — P1 (`jackson1999` removed), P2 (section/subsection opener diversification; `\E`/`\H` harmonization), P3 (§1.6 step labels + section-bridge `\paragraph{}` titles + worked-example setup headings).

---

## 12. NO-RECURSION checklist (Ch. 1 re-audit)

| # | Item | Result |
|---|------|--------|
| 1 | HOME/USE tags vs theorem matrix | **PASS** |
| 2 | No theorem proof outside HOME | **PASS** |
| 3 | Repeated equations referenced not re-displayed | **PASS** |
| 4 | Unique technical establishment per subsection | **PASS** |
| 5 | Unique subsection closures | **PARTIAL** |
| 6 | DEFER only in §1.7 | **PASS** |
| 7 | Unique opening paragraphs (adjacent) | **PARTIAL** |
| 8 | Unique closing paragraphs (adjacent) | **PARTIAL** |
| 9 | Section intro + summative framing | **PASS** (8/8) |
| 10 | Substantial mathematical depth | **PASS** |
| 11 | Variables defined at first appearance | **PASS** (spot audit) |
| 12 | Math + physical explanation per major eq. | **PASS** |
| 13 | Equation-explanation template variation | **PARTIAL** |
| 14 | Monotone equation numbering | **PASS** |
| 15 | Section-first drafting order | **PASS** |

**Chapter 1 NO-RECURSION re-audit:** **PASS** (prose-uniqueness remediated 2026-05-29)

---

## 13. Final scholarly verdict

Chapter 1 has achieved the **intellectual transformation** the author sought: from angular-phenomena survey to a **foundational theory of realizability, accessibility, and progressive physical filtering**. Mathematically and architecturally it is **forensic-audit clean**. The remaining gap between **“excellent locked manuscript”** and **literal “zero deviation” prose uniqueness** is stylistic, not scientific.

| Decision | Recommendation |
|----------|----------------|
| Proceed to Ch. 3 §3.0.1? | **Authorized** — no P0 blockers |
| Re-lock maintained? | **Yes** — prose-uniqueness pass incorporated |
| Publisher sample quality? | **Yes** — P1–P3 remediation complete |

---

*End full forensic audit — Chapter 1.*
