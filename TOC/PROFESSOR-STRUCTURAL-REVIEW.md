# Senior Professor Review — Overall Book Structure, Volumes, and “Slimmer” Architecture

**Reviewer stance:** Graduate research monograph (Harrington / Collin / Balanis tier)  
**Manuscript:** *Angular Structure in Electromagnetic Fields* — 19 chapters  
**Date:** 2026-05-24  
**Basis:** Definitive TOC (`TOC-master-19chapters-definitive.txt`), coverage audit, and comparison with interim smoothed outline

---

## 1. Executive summary (plain terms)

You are correct that the book **felt** slimmer after the “smoothening” pass — but two different things were mixed together:

| Effect | What happened | Impact on pages |
|--------|----------------|-----------------|
| **A. Title / outline hygiene** | Repeated phrases removed from **headings**; standard chapter arc (Intro → theory → examples → summary) | **TOC looks shorter**; reading clarity **up** |
| **B. Subsection deletion** (interim smoothed file) | ~290 **numbered topics** cut from Ch. 5–19 | **Real loss** of mathematics and physics — **rejected** |
| **C. Definitive TOC (current)** | Full **1,196 subsections** restored; 1 duplicate removed; forward-map discipline added | **Same scientific scope** as your original vision; **slimmer only when you write** each topic once |

**Professor’s judgment:**  
- **Architecture of smoothing (forward-only, single HOME per concept, summary sections)** — **excellent**; keep it.  
- **Deleting subsections to cure repetition** — **unacceptable** for the monograph you described.  
- **Three volumes remain the right commercial and pedagogical choice**, but they will **not be equal thickness**. Volume I is the slender foundation; Volume III is the largest intellectual span.

**Expected page budget (dense monograph, with [FIG+PROB] problems):**

| Bundle | Subsections | Indicative pages |
|--------|-------------|------------------|
| **Volume I** (Ch. 1–4) | 171 | **500–650** |
| **Volume II** (Ch. 5–12) | 515 | **1,100–1,350** |
| **Volume III** (Ch. 13–19) | 510 | **1,050–1,300** |
| **Total** | **1,196** | **~2,650–3,300** |

Your early **~2,500 page** estimate is still credible if many subsections are Tier B (prose + key equations) rather than full Collin-style proofs everywhere. The book becomes **slimmer in the writing**, not by amputating the outline.

---

## 2. Overall intellectual architecture (19 chapters)

The manuscript follows a **single organizing principle**: electromagnetic fields as **objects on the sphere and in angular-harmonic space**, developed with **operator theory** and constrained by **finite geometry, gauge, and measurement**.

### Logical spine (five movements)

```
FOUNDATIONS (Ch. 1–4)     Operators, eigenfields, realizability
        ↓
SOURCES (Ch. 5–8)         Mechanisms → arrays → apertures → metasurfaces
        ↓
PROPAGATION (Ch. 9–12)    Free space → media → turbulence → ponderable matter
        ↓
INFERENCE (Ch. 13–16)     Measure → information → comms → sensing
        ↓
JUDGMENT (Ch. 17–19)      Astro/remote sensing → limits → open problems
```

**Strengths (world-class monograph traits):**

1. **Correct ordering** — gauge and AM conservation before VSH; radiation operators before arrays; truncation (Ch. 4) before OAM devices (Ch. 5–8).  
2. **Ch. 18–19 as capstone** — unusual and valuable: separates **physics-closed** from **open** claims (needed in “angular momentum / OAM” literature).  
3. **Operator-theoretic glue** — Ch. 2, 4, 13, 14 give a Harrington–Collin backbone, not a catalogue of beams.  
4. **Examples sections** — if executed with figures and problems, they distinguish this from a pure review article.

**Risks (manage in Volume II–III drafting, not by cutting TOC):**

1. **Thematic echoes** — “reactive vs radiative,” “scaling laws,” “paraxial limits,” “reciprocity,” “null spaces” appear in many chapters. **Titles** now say this once per chapter; **prose** must **cite** Ch. 1–4 instead of re-explaining.  
2. **Volume III is heavy** — Ch. 13–17 overlap in “finite aperture,” “Fisher information,” “dimensionality.” Architecture is fine if Ch. 14 is **theory** and Ch. 15–16 are **applications** with `[USE]` only.  
3. **Ch. 12 is long** (83 subsections) — Abraham–Minkowski, stress tensors, transients: all legitimate; schedule extra time here.

**Verdict on overall structure:** **Sound and publishable** as a three-volume series aimed at researchers. It is **not** a textbook; it is a **treatise with applications**, closer to Collin + modern OAM/operator literature.

---

## 3. Three volumes — confirmation and realistic split

Your original **three-volume** plan remains **valid**. Recommended binding:

### Volume I — *Foundations and Accessible Structure*  
**Chapters 1–4** | **171 subsections**

| Ch. | Title | Role |
|-----|--------|------|
| 1 | Foundations | Maxwell, AM, gauge, measurement language |
| 2 | Radiation operators | Green, Sommerfeld, NR sources, reciprocity |
| 3 | Eigenfields | VSH, AM operators, bases |
| 4 | Realizability | Truncation, SV decay, LPS — **natural cliffhanger** |

**Publish first.** Self-contained for theorists; cites from Vol. II optional.  
**Professor’s note:** Do **not** expand Vol. I to “include a bit of antennas” — Ch. 5 is the right place.

---

### Volume II — *Radiation, Structure, and Propagation*  
**Chapters 5–12** | **515 subsections** (~2× the page mass of Vol. I)

| Block | Chapters | Content |
|-------|----------|---------|
| **II-A Sources & geometry** | 5–8 | Dipoles to metasurfaces |
| **II-B Propagation & matter** | 9–12 | Free space through ponderable media |

**Internal ordering is correct.** Ch. 6–8 are the “angular device” core for microwave/ optics readers; Ch. 9–11 are propagation physics; Ch. 12 closes the loop to matter.

**If publisher pressures for thinner Vol. II:** split into **Vol. IIa (5–8)** and **Vol. IIb (9–12)** — a **four-volume** series — rather than deleting subsections.

---

### Volume III — *Observation, Systems, and Physical Meaning*  
**Chapters 13–19** | **510 subsections**

| Ch. | Focus |
|-----|--------|
| 13 | Measurement & estimation |
| 14 | DOF & capacity (electromagnetic, pre-Shannon) |
| 15 | Communication |
| 16 | Sensing & radar |
| 17 | Astrophysical & remote sensing |
| 18 | Limits & judgment (**synthesis**) |
| 19 | Open problems |

**This volume is your “professor’s judgment” book** — especially Ch. 18–19. It will be cited when the field confuses **mode labels** with **physical degrees of freedom**.

**Verdict:** **Keep three volumes** for marketing and your Vol. I first-publication strategy. Accept **unequal thickness**: I ≪ II ≈ III in page count.

---

## 4. Review of the “smoothened architecture” (what to keep vs reject)

### 4.1 Keep (excellent editorial architecture)

1. **Chapter Summary and Forward Map** (§X.7 / §X.11 / §X.14) — the **only** numbered forward-pointer blocks.  
2. **`[HOME]` / `[USE]` / `[DEFER]`** discipline — cures repetition **in the manuscript**, not in the syllabus.  
3. **One Examples block per chapter** with **[FIG+PROB]** — aligns with “every mathematical step + physical meaning + schematic.”  
4. **Introduction §X.0** — replaces fifty variants of “Inherited from Chapters 1–N” in titles.  
5. **Shorter section titles** — readers see structure; they do not read the same six adjectives in every heading.

### 4.2 Reject (failed smoothening pass)

1. **Merging or deleting subsections** in Ch. 5–19 to reduce count — **removed** topics such as Poisson summation in angular aliasing, Fokker–Planck limits, canonical synthesis theorem. **Restored in definitive TOC.**  
2. **Assuming fewer TOC lines ⇒ fewer pages without writing discipline** — page count is set by **proofs and problems**, not outline lines.

### 4.3 Where the book truly becomes “slimmer” (desired)

| Mechanism | Page savings | Scientific cost |
|-----------|--------------|-----------------|
| Prove once, cite later (`[USE §x.y]`) | **Large** | **None** if rigorous |
| Tier B subsections (sketch + “full proof in App. X”) | Moderate | Low if appendices exist |
| One figure per example (not re-draw similar geometries) | Moderate | None |
| Avoid re-stating Maxwell / VSH in Ch. 9–16 | **Very large** | **None** |

**Professor’s rule:** The monograph should be **slim in redundancy**, **not slim in scope**.

---

## 5. Subsection statistics — original vs smoothed vs definitive

| Metric | Original | Interim smoothed | **Definitive (write from this)** |
|--------|----------|------------------|----------------------------------|
| Subsections (x.y.z) | ~1,197 | ~750–850 (est.) | **1,196** |
| Vol. I subs | 171 | 171 (unchanged) | **171** |
| Duplicate entries | 1 (§7.2.1) | — | **0** |
| Scientific completeness | Full | **Incomplete** | **Full** |

**Per-chapter subsection load (definitive):**

- Lightest: Ch. 1 (32), Ch. 2 (45)  
- Heaviest: Ch. 12 (83), Ch. 17 (84), Ch. 18 (77)  
- **Median chapter:** ~63 subsections  

This is **dense** but appropriate for a **multi-volume treatise**, not a slim textbook.

---

## 6. Comparison to classic references (positioning)

| Classic | Your monograph |
|---------|----------------|
| **Harrington** | You match operator / radiation integral rigor; you **add** angular structure as organizing axis |
| **Collin** | You match BVP and Green’s function culture; you **add** AM eigenfields and realizability |
| **Balanis** | Arrays/apertures appear (Ch. 6–7) but **after** truncation theory — **correct** order |
| **Jackson** (AM/gauge) | Ch. 1 + 3 deepen gauge and AM beyond typical antenna books |

**Gap to avoid:** Do not let Ch. 15–16 read like a **second textbook** on MIMO/radar. They must be **applications of Ch. 14’s rank structure** with `[USE]` tags.

---

## 7. Recommendations before you edit Volume I

### A. Structural (no TOC cuts)

1. **Adopt definitive TOC only** — begin Vol. I drafting at §1.0.1.  
2. **Freeze Vol. I notation** (`00-NOTATION.md`) before §1.1.1 prose.  
3. **Add appendix plan** for long proofs (rigged Hilbert space, LPS concentration) to keep body forward-moving.  
4. **Figure budget:** plan **~1.2–1.5 figures per subsection** in Examples; **~0.3** elsewhere — ≈400–500 figures total series (many small schematics).

### B. Optional publisher negotiation

| Option | When |
|--------|------|
| **3 volumes** (your plan) | Default; Vol. I ~550 pp, II ~1200 pp, III ~1150 pp |
| **4 volumes** (5–8 / 9–12 split) | If II is too heavy for binding or price |
| **Digital-first single PDF** + print volumes | For citation stability |

### C. Do not do before Vol. I draft

- Do not re-smooth by deleting subsections.  
- Do not draft Ch. 15–16 before Ch. 4 §4.11 is locked.  
- Do not merge Ch. 17 into Ch. 16 to “save pages” — different epistemology (passive observation).

---

## 8. Final professor’s sign-off

| Question | Answer |
|----------|--------|
| Is the **overall 19-chapter architecture** sound? | **Yes** — coherent, ambitious, defensible. |
| Are **three volumes** still right? | **Yes** — publish **Vol. I first**; II and III are companions, not repeats. |
| Is the book **too slim** now? | **Outline: no** (definitive restores full scope). **Manuscript will be slimmer only if you enforce no prose recursion.** |
| Was the **smoothened** cut acceptable? | **No** for a complete monograph — **architecture yes, deletions no**. |
| Ready to edit Volume I? | **Yes**, under definitive TOC + HOME/USE + [FIG+PROB] rules. |

---

## 9. One-page mental model for the author

```
TOC width  = what you PROMISE to cover (keep full definitive outline)
Page count = how DEEPLY you write each promise once
Volumes    = how you SHIP it (I foundations, II physics of structure & waves, III inference & judgment)
Slim book  = cite Ch. 1–4 instead of re-teaching Maxwell in Ch. 11
```

---

*This review supersedes any impression that the interim smoothed file reduced the scientific scope of the work. Use `TOC-master-19chapters-definitive.txt` for all Volume I editing.*
