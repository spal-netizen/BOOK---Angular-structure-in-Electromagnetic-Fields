# Volume I TOC — Critical Title and Order Review (Locked)

**Date:** 2026-05-25  
**Authoritative file:** `TOC/volume-I-ch01-04-FINAL.txt`  
**Subsection count:** 171 (unchanged)  
**Verdict:** **Approved for drafting** after title polish; **order unchanged**.

---

## 1. What was reviewed

| Item | Count | Action |
|------|-------|--------|
| Chapters | 4 | 3 chapter titles refined |
| Sections | 44 | 6 section titles refined |
| Subsections | 171 | 28 subsection titles refined |
| HOME/USE/DEFER tags | all | **Preserved** — no tag changes |
| Section/subsection order | full spine | **Preserved** — no reorder |

**Rejected for Volume I writing:** `TOC-master-19chapters-ULTIMATE-V2.2` subsection titles of the form *"Formal statement … for [section title] …"* — these repeat parent titles on every x.y.z line and violate zero title recursion.

---

## 2. Title recursion fixes (representative)

| Before | After | Reason |
|--------|-------|--------|
| Chapter 1: *Foundations of Angular Electromagnetic Structure* | *Foundations: Maxwell Structure, Symmetry, Gauge, and Observability* | Aligns with master ownership map; avoids repeating "angular" in every chapter |
| §1.2 *Angular Structure of Electromagnetic Fields* | *Directional, Flux, and Regime Structure* | Distinct from chapter title and §1.1 Maxwell block |
| §1.1 *Maxwell Theory and Conservation Laws* | *Maxwell Equations, Sources, and Well-Posedness* | Conservation content stays in §1.1.4–1.1.5 without duplicating §1.2 theme |
| §3.6 *Completeness, Truncation, and Symmetry Breaking* | *Completeness Loss and Symmetry Breaking* | "Truncation" owned primarily by Ch. 4 |
| §4.8 *Scaling Laws and Spectral Concentration* | *Concentration Bounds and n-Width Limits* | Removes duplicate "scaling" with §4.6 |
| §4.6.2 *Scaling laws for spectral truncation* | *Spectral truncation exponents and decay laws* | Distinct from §4.8 asymptotics |
| §x.0.3 *Continuity with Chapter(s) …* (×3) | Unique inheritance titles per chapter | Removes copy-paste bridge titles |
| §x.11.1–3 *Results established in Chapter X* (×4) | *HOME inventory / Deferred registry / Entry problems* | Synthesis blocks unique per chapter |
| §x.10 *Examples* (×3) | *Worked Problems* | Consistent with §1.6; problem names stay unique |

---

## 3. Order review — no changes required

### Volume I spine (locked)

```
Ch.1  Language: scope → Maxwell → directional structure → rotations → gauge → measurement → problems → map
Ch.2  Operators: intro → spaces → time/freq → Green → Sommerfeld → integrals → spectrum → null space → reciprocity → angular action → problems → map
Ch.3  Representations: intro → Hilbert → AM/SO(3) → Helmholtz → VSH → normalization → completeness loss → spectra → bases → gauge limits → problems → map
Ch.4  Realizability: intro → sources → equivalence → operator chains → bandlimits → eigenfield coupling → truncation rank → null/reconstruction → concentration → consequences → problems → map
```

### Order rationale (confirmed)

- **Gauge (§1.4) before measurement (§1.5)** — observables are gauge-aware.
- **Sommerfeld (§2.4) before radiation integrals (§2.5)** — uniqueness before asymptotics.
- **Null spaces (§2.7) before angular-spectrum action (§2.9)** — NR structure before far-field filtering.
- **Helmholtz (§3.3) before VSH (§3.4)** — separation before harmonic definitions.
- **VSH HOME (§3.4) before coupling (§4.5)** — definitions before realizability coupling.
- **Truncation rank (§4.6) before concentration (§4.8)** — effective dimension before LPS/n-width.
- **Gauge interpretation (§3.9) after basis change (§3.8)** — limits applied after representations exist.

---

## 4. HOME/USE ownership unchanged

All corrections from `VOLUME-I-FINAL-REVIEW.md` remain valid:

- §2.0 narrative only (no `[USE]`)
- §2.7 `[HOME]` for NR sources; §4.7.1–2 `[USE §2.7]`
- §2.2.4 `[HOME]` evanescent split; §2.5.4 / §4.4.2 `[USE]`
- §1.4 `[HOME]` gauge; §3.9.1–2 `[USE §1.4]`
- §2.1.3 `[HOME]` compactness; §2.6.3 `[USE §2.1.3]` + Fredholm `[HOME]`

---

## 5. Mapping note (Volume I sections vs master § numbers)

Volume I Chapter 1 uses **thematic section numbering** that inserts §1.2 *Directional, Flux, and Regime Structure* relative to the master TOC (where master §1.2 is *Conservation laws*). Conservation **HOME** content remains in **§1.1.4–§1.1.5** per `THEOREM-HOME-MATRIX-19CH-ULTIMATE.md`.

---

## 6. Sign-off

| Criterion | Status |
|-----------|--------|
| 171 subsections retained | ✓ |
| Zero title recursion (no parent-title paste in x.y.z) | ✓ |
| Logical forward order | ✓ |
| HOME/USE/DEFER discipline | ✓ |
| Dual-tag anomalies rectified (2026-05-25) | ✓ |
| Master ↔ Vol I crosswalk in forward map | ✓ |
| Ready for §1.0.1 drafting | ✓ |
