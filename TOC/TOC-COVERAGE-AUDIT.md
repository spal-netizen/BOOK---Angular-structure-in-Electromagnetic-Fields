# Rigorous TOC Coverage Audit — CONFIRMED

**Date:** 2026-05-24  
**Auditor basis:** Line-by-line comparison of original (`Before smoothening TOC…`) vs interim smoothed vs **definitive** TOC.

---

## Executive verdict

| TOC version | Subsection count | Mathematical coverage | Status |
|-------------|------------------|----------------------|--------|
| **Original** | 1487 | Complete | Superseded (bloated titles, 1 duplicate) |
| **Smoothed** (interim) | ~420 (Ch.5–19 heavily cut) | **INCOMPLETE — not acceptable** | **Withdrawn** |
| **Definitive** (current) | **1486** | **Complete** | **AUTHORITATIVE** |

**Confirmation:** With the definitive TOC, **no original subsection topic was removed**, except the **duplicate §7.2.1** (listed twice in the original). One mis-numbered item (§7.9.4 under §7.7 in the original) is corrected as **§7.7.4**; §7.9.4 retained for phase-surface context with `[USE 7.7.4]` for body text.

**Volume I (Ch. 1–4):** **215 subsections** — identical count to original. **All mathematics and physics threads preserved.**

---

## Why the smoothed TOC failed your monograph standard

The interim smoothed file (`TOC-master-19chapters-smoothed.txt`) removed **~430 subsections** in Chapters 5–19 alone, including:

| Chapter | Original subs | Smoothed subs | **Removed** |
|---------|---------------|---------------|-------------|
| 5 | 60 | 53 | 7 |
| 6 | 74 | 55 | **19** |
| 7 | 72 | 55 | **17** |
| 8 | 79 | 58 | **21** |
| 9 | 80 | 52 | **28** |
| 10 | 82 | 49 | **33** |
| 11 | 88 | 48 | **40** |
| 12 | 103 | 59 | **44** |
| 13–19 | … | … | **31–52 each** |

**Examples of removed topics (restored in definitive):**

- §5.5.5 Consistency with spectral truncation constraints  
- §5.6.4–5.6.5 Aperture angular-momentum content and finite-aperture restrictions  
- §5.7.4 Asymptotic suppression of reactive structure  
- §6.5.4–6.5.5 Nyquist limits and Poisson summation in angular aliasing  
- §8.7.4–8.7.5 Nonlocality and angular redistribution  
- §9.4.5 Irreversible suppression of non-propagating components  
- §11.7.5–11.7.6 Fokker–Planck and radiative-transfer limits  
- §12.7.1–12.7.4 Abraham–Minkowski partitioning (full block)  
- §14.12.1–14.12.4 Shannon emergence from electromagnetic dimensionality  
- §18.12.1–18.12.4 Canonical synthesis theorem (full block)  

**Conclusion:** The smoothed TOC must **not** be used for writing. The **definitive** TOC replaces it.

---

## Volume I — mathematics & physics thread map (no gaps)

Each row is the **sole [HOME]** for definitions/proofs. Later chapters ** [USE] ** only.

| Thread | Home section | Must not re-derive in |
|--------|--------------|------------------------|
| Maxwell (SI, phasor) | §1.1.1 | Ch. 2–19 |
| AM conservation / torque | §1.1.5, §1.2 | Ch. 5+ (cite only) |
| Gauge & spin–orbit limits | §1.4 | Ch. 3.9, Ch. 18 |
| Rotations / tensors | §1.3 | Ch. 3.2, 6.4 |
| Function spaces & operators | §2.1 | Ch. 4, 13–15 |
| Green / dyadic / retardation | §2.3 | Ch. 5.6, 9.2 |
| Sommerfeld / uniqueness | §2.4 | Ch. 7.1 |
| NR sources / null space | §2.7 | Ch. 4.7 (realizability view) |
| Reciprocity | §2.8 | Ch. 7.6, 8.4 |
| Radiation on angular spectra | §2.9 | Ch. 5–8 (apply only) |
| VSH / \(\mathbf{M}_{\ell m}\), \(\mathbf{N}_{\ell m}\) | **§3.4.1** | Everywhere else |
| AM eigenfields | §3.4.4 | Ch. 4.5, 5.5.4 |
| Rigged Hilbert / distributions | §3.1.4 | Ch. 13 |
| Basis change (plane / cyl.) | §3.8 | Ch. 9.3 |
| Equivalence / apertures | §4.2 | Ch. 7.2 |
| Truncation / SV decay | §4.6–4.8 | Ch. 5–19 (scaling only) |
| LPS / n-width | §4.8.4 | Ch. 14.5 |

**Volume I subsection checklist:** 215/215 present in `volume-I-ch01-04-definitive.txt`.

---

## Recursion-free architecture (how the definitive TOC enforces it)

Recursion is **not** prevented by deleting topics. It is prevented by:

1. **Single [HOME] per concept** (table above).  
2. **`[USE §x.y]`** tags in TOC comments for derived sections.  
3. **§X.7 / §X.11 / §X.14+** — only numbered **Chapter Summary and Forward Map** blocks may list deferred material.  
4. **Body-text rule:** no second display of the same equation unless it is a **new limit, new coordinate system, or new theorem** with explicit pointer to the prior definition.

**Title de-duplication** shortens headings only; it does **not** remove content obligations.

---

## Monograph delivery standard (mandatory per Examples block)

Every section marked **`[FIG+PROB]`** in the definitive TOC must contain:

1. **Problem statement** (given geometry, frequency, symmetry).  
2. **Schematic diagram** in the running text (numbered figure + caption).  
3. **Complete mathematical steps** (no skipped operator domains or gauge steps).  
4. **Physical interpretation** paragraph after each major equation block.  
5. **Link forward** one sentence to the next subsection (no backward re-teaching).

Applies to: §1.6, §2.10, §3.10, §4.10, and all **Examples** sections in Ch. 5–19.

---

## Editorial corrections in definitive TOC

| Item | Action |
|------|--------|
| Duplicate §7.2.1 | Second entry removed `[CHECK]` |
| §7.9.4 mis-placed under §7.7 in original | Renumbered to §7.7.4; §7.9.4 kept with `[USE 7.7.4]` |
| §6.4.4 typo `C_NStructure` | Preserved intent; fix in LaTeX to `C_N` |
| "Structural Summary…" | Renamed **Chapter Summary and Forward Map** |
| Chapter 1 §1.0.x | **Not** tagged `[USE]` (false positive in auto-build — corrected) |

---

## Files — which to use

| Authoritative | Withdrawn |
|---------------|-----------|
| `TOC/TOC-master-19chapters-definitive.txt` | `TOC-master-19chapters-smoothed.txt` |
| `TOC/volume-I-ch01-04-definitive.txt` | `volume-I-ch01-04-smoothed.txt` |
| `TOC/TOC-COVERAGE-AUDIT.md` (this file) | — |

Copy for writing: `volume-I-ch01-04.txt` points to definitive content.

---

## Professor sign-off checklist

- [x] All 1487 original subsections accounted for (1486 + 1 duplicate removed)  
- [x] Volume I: 215/215 subsections — no missing mathematics thread  
- [x] Smoothed TOC rejected for incompleteness  
- [x] Forward-only architecture via [HOME]/[USE]/[DEFER]  
- [x] [FIG+PROB] required on all Examples sections  
- [ ] Your approval of definitive titles (optional micro-edits per section)  

**Rigorous confirmation:** The definitive TOC is **complete** relative to your original outline and **safe** for monograph drafting under a zero-recursion discipline.
