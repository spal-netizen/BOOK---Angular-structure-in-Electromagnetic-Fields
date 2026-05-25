# TOC Review Report — Full Manuscript (19 Chapters)

**UPDATE:** The interim **smoothed** TOC (`*-smoothed.txt`) is **withdrawn** — it removed ~430 subsections in Ch. 5–19 and failed the monograph completeness requirement. Use **`TOC-master-19chapters-definitive.txt`** and **`TOC-COVERAGE-AUDIT.md`** instead.

**Source reviewed:** `Before smoothening TOC-Angular structure in Electromagnetic Fields.txt` (1813 lines)  
**Authoritative output:** `TOC-master-19chapters-definitive.txt`, `volume-I-ch01-04-definitive.txt`  
**Conventions locked:** \(e^{-j\omega t}\), SI (unchanged)

---

## 1. Principal defects in the original TOC

### A. Title-level recursion (repeated phrases)

The same modifiers were stacked in hundreds of titles:

| Repeated phrase cluster | Typical count per chapter | Action |
|-------------------------|---------------------------|--------|
| "Angular" + "Structure" + "Electromagnetic" | 15–40× | Keep **once** in chapter title; drop in sections |
| "Inherited from Chapters …" | 1× intro only | Moved to **§X.0** only |
| "Spectral" + "Accessibility" + "Truncation" | 8–20× | One **dedicated section** per chapter |
| "Reactive … Evanescent … Radiative" | 2–4× | **One** section: *Near-field and radiative regimes* |
| "Scaling Laws and …" | 2–3× | **One** section per chapter |
| "Relation to Approximate and Paraxial …" | Ch. 9–17 | **One** appendix-style section or §X.12 |
| "Redistribution Versus Generation" | Ch. 5–8 | Merged into **conversion/generation** section |
| "Structural Summary and Chapter Inheritance" | Every chapter | Renamed **Chapter Summary and Forward Map** (fixed 3 subs) |

### B. Duplicate and erroneous entries

| Location | Issue | Fix |
|----------|--------|-----|
| §7.2.1 | Listed **twice** (identical title) | Single entry |
| §7.7.4 | Numbered **7.9.4** | Renumbered |
| §6.4.4 | Typo `C_NStructure` | `C_N` structure |
| Ch. 2 vs 4 | Non-radiating sources in both | Ch. 2: operator null space; Ch. 4: realizability only (no re-title) |
| Ch. 13 vs 4 | Aperture truncation restated | Ch. 13: measurement view only |
| Ch. 14 vs 15 | Shannon / dimensionality duplicated | Ch. 14: theory; Ch. 15: systems (cross-ref only) |

### C. Order and architecture

**Applied ordering principle (every chapter):**

1. **Introduction** (scope, bridge from prior chapter — no proofs)  
2. **Definitions / operators** (new material only)  
3. **Core theory** (single pass)  
4. **Regimes** (reactive / evanescent / radiative — if needed, once)  
5. **Limits and scaling** (once)  
6. **Examples**  
7. **Chapter Summary and Forward Map** (only place for explicit forward pointers)

**Removed** mid-chapter subsections whose only role was "relation to earlier chapters" (content belongs in §X.0 or in prose cross-references).

### D. Volume I fine-tuning (Ch. 1–4)

- **~15% fewer subsections** than original, with **zero loss** of logical coverage.  
- Merged overlapping operator topics (compactness, Fredholm) under single headings.  
- **§3.8** shortened: alternative bases summarized here; full aperture use in Vol. II.  
- **§4.8.4** LPS/n-width: one subsection (not split across §4.6 and §4.8).  
- Chapter titles unchanged in meaning; section titles shortened to **one focal noun phrase**.

---

## 2. Editorial rules for all future drafting (body text)

1. **Define once, cite forever** — TOC enforces single home for each topic.  
2. **§X.7 / §X.11 / §X.14** (summary sections) are the **only** numbered "deferred concepts" lists.  
3. Section titles are **nouns**, not full sentences.  
4. Do not re-introduce topics marked *deferred* in a prior chapter's summary.  
5. Examples sections contain **worked problems**, not new theory.

---

## 3. Statistics (approximate)

| | Original (19 ch) | Smoothed (19 ch) | Vol. I only (smoothed) |
|--|------------------|------------------|-------------------------|
| Chapter headings | 19 | 19 | 4 |
| Section-level (x.y) | ~280 | ~195 | ~44 |
| Subsection (x.y.z) | ~750 | ~420 | ~155 |
| Duplicate titles | 12+ exact | 0 | 0 |

---

## 4. Files to use going forward

| Use this | Retire this |
|----------|-------------|
| `volume-I-ch01-04-smoothed.txt` | `volume-I-ch01-04.txt` (old copy) |
| `TOC-master-19chapters-smoothed.txt` | Downloads folder "Before smoothening…" for editing |
| Regenerate LaTeX stubs from smoothed Vol. I TOC when ready | Current `ch01.tex`–`ch04.tex` stubs |

---

*Review completed for forward-only, recursion-free manuscript architecture.*
