# Volume I — Independent transformation audit (Chapters 2–4)

**Date:** 2026-11-14  
**Auditor role:** Pre-rewrite intellectual assessment (Stage A only — **no manuscript rewrite in this commit**)  
**Chapter 1 benchmark:** frozen — tag `chapter1-benchmark-20261114-a05b9cce`, PDF SHA-256 `A05B9CCEFDE2E57C7D30937857994BF8B3CFA2E29A531273AF7E582ED307740E` (62 pp)  
**Author reference match:** `C:\Users\S.Pal\Downloads\main-ch01-only.pdf` byte-identical to benchmark PDF  

---

## 1. Repository map (what to transform)

| Chapter | Primary editable entry | Structure | Approx. scale |
|---------|------------------------|-----------|---------------|
| **2** | `latex/ch02.tex` → `latex/ch02-stage11.tex` | 57 `\input` fragments under `latex/ch02-classical/restored/` + parts | Modular Stage 8–11 restoration |
| **3** | `latex/ch03.tex` | Monolithic (~13.9k lines) | Heavy operator/representation pipeline prose |
| **4** | `latex/ch04.tex` | Monolithic (~6.9k lines) | Rank / realizability / SVD narrative |

**Volume build hooks:** `latex/main.tex` includes `ch01`–`ch04`; alternate integrators `main-vol1-stage9.tex`, `main-vol1-stage10.tex`, `main-ch02-stage*.tex` (legacy).

**Reference PDFs (rendered evidence, not edit sources):**

| File | Pages | Content |
|------|------:|---------|
| `Volume-I-Author-Review-31-104.pdf` | 74 | Ch. 1 (partial Vol. I front + Ch.1) |
| `Volume-I-Author-Review-105-252.pdf` | 148 | Ch. 2 |
| `Volume-I-Author-Review-253-424.pdf` | 172 | Ch. 3 |
| `Volume-I-Author-Review-425-516.pdf` | 92 | Ch. 4 |

**Canonical Ch. 1 source (frozen):** `CHAPTER1_FORENSIC_AUDIT_STAGE1_20261010/CHAPTER1_R13_0_SOURCE_VERIFIED_CANONICAL/` — **not** `latex/ch01.tex` for benchmark parity.

---

## 2. Cross-volume convention conflict (critical for coordinated rewrite)

| Item | Chapter 1 benchmark | `latex/ch02*.tex`, `latex/ch03.tex`, `latex/ch04.tex`, `latex/frontmatter.tex` |
|------|---------------------|--------------------------------------------------------------------------------|
| Time harmonic | **`exp(+jωt)`**, `∂/∂t → +jω` | **`exp(-jωt)`** stated repeatedly (`ch02-stage9-preamble.tex`, Ch.4 §4.0, restored Ch.2 blocks) |
| Outgoing Hankel / radiation sign | Locked to Ch.1 VSW pair | Must be re-derived consistently when phasor flips |
| Maxwell display | Ch.1 `eq:ch1.maxwell-local` (+ convention) | Ch.2 preamble cites Ch.1 equations **while using opposite time sign in prose** |

**Assessment:** A cosmetic prose pass cannot unify Volume I. **Stage B must choose one volume-wide phasor policy** (benchmark: **+jω** from Ch.1) and **systematically convert** Ch.2–4 equations, Green functions, Poynting factors, and Chu/outgoing branches—not merely search-replace time-factor sentences.

**Risk if ignored:** radiation operators, uniqueness, reciprocity, and Ch.3 flux normalizations will contradict Ch.1 proofs.

---

## 3. Continuity of scientific argument (A)

### Chapter 2

**Intended arc (TOC):** impressed source → Maxwell solution → outgoing radiation → angular-spectrum / null-space / reciprocity.

**Current state:** Scientifically rich fragments exist (Green functions, Sommerfeld, radiation integrals, NR null spaces). However:
- Introduction and §2.0–2.1 often **explain the chapter’s operator program** (`𝒮_ω`, `Π_rad`, `ℛ_ω`, admissibility “export sequence”) before the reader has retarded potentials and radiation conditions in hand.
- **Stage 8–12 provenance** visible in comments (`% Stage 12 —`, `CONVENTION: eq:ch1.admissible-space continuity sign may differ`).
- Multiple parallel entry points (`ch02-stage8.tex`, `stage9`, `stage10`, `stage11`) increase drift risk.

**Missing / weak links vs Ch.1:** Ch.1 already proved VSW pair, exterior uniqueness scope, dipole distributional closure. Ch.2 should **cite and apply**, not re-litigate—yet restored §2.5.3 still trails orbital–spin language from Ch.1.

### Chapter 3

**Intended arc:** rotational covariance → generators → VSH / eigenfields → normalization → measurement composition.

**Current state:** Substantial mathematics is present, but opening §3.0 is dominated by **pipeline diagrams** (source → `𝒮_ω` → `Π_rad` → coefficients → measurement) and “Volume I thesis” rhetoric rather than **Maxwell fields on S²**.

- Repeated meta-constructs: `Convention 3.0A`, `PHYSICAL-MEMORY`, `PHYSICAL-HISTORY` comment markers.
- Heavy dependence on Ch.2 operator symbols before Ch.2 is itself classicalized.

### Chapter 4

**Intended arc:** realizable vs accessible sets → radiation operator rank → truncation → measurement limits.

**Current state:** Clear **conceptual** distinction (`𝒮_real`, `ℰ_acc^(N)`). Weaknesses:
- Theorems on spectral compression / effective rank often **precede** fully stated operator norms and domains.
- **Figure 4.2 asset missing** in built PDF (see §6).
- Opening mixes laboratory vignettes with definitions that assume Ch.3 `eq:ch3.representation-map` without local hypotheses recap.

**Cross-chapter circularity risk:** Ch.3 defines representation maps; Ch.4 cites them for rank; Ch.2 defines `ℛ_ω`—all three must be **owned once** with precise hypotheses.

---

## 4. Scientific necessity and ownership (B) — recommended HOME map

| Result / object | HOME (derive once) | USE elsewhere |
|-----------------|-------------------|---------------|
| Maxwell phasor curl laws, SI vacuum constitutive | **Ch.1** (frozen) | Ch.2–4 |
| Outgoing scalar/vector Green function | **Ch.2** §2.3 | Ch.3–4 |
| Sommerfeld / exterior uniqueness (full hypotheses) | **Ch.2** §2.4 (extends Ch.1) | Ch.3–4 |
| Radiation integrals, far-zone \(kr\) limits | **Ch.2** §2.5 | Ch.3–4 |
| NR currents / null of radiation operator | **Ch.2** §2.7 | Ch.4 |
| `𝒮_ω`, solution map (if retained as notation) | **Ch.2** §2.0–2.1 — **must be derived from Green operators**, not axiomatic |
| `Π_rad` / reactive split | **Ch.2** — only if **orthogonal projection OR asymptotic definition** is proved | Ch.3–4 |
| Scalar / vector SH, VSH, \(M_{\ell m}, N_{\ell m}\) normalization | **Ch.3** §3.4 (per TOC) | Ch.4 |
| Angular momentum generators on vector fields | **Ch.3** §3.2 | Ch.4 |
| Flux-normalized inner product for modes | **Ch.3** §3.5 | Ch.4 |
| `𝒮_real`, `ℰ_acc` definitions | **Ch.4** §4.1 | — |
| SVD / effective rank \(d_{\mathrm{eff}}(\varepsilon)\) | **Ch.4** — after Ch.2 operator is a **defined compact operator** on stated space | — |

**Eliminate:** repeated full derivations of plane-wave transversality, Poynting ½ factors, and Chu \(Q\) scaling already closed in Ch.1.

---

## 5. Mathematical integrity samples (C)

### Verified concerns (evidence-based)

1. **Phasor convention split** (§2 above) — **major**.
2. **Ch.4 line 66–68:** states `\exp(-\jj\omega t)` while referencing Ch.2 radiation section — incompatible with Ch.1 benchmark without conversion table.
3. **`Π_rad` as projector:** prose treats reactive removal as operator composition. Must prove: domain, idempotence or asymptotic meaning, and that reactive storage is not discarded from Maxwell solutions incorrectly.
4. **Function-space claims** (boundedness, compactness, Fredholm): appear in §2.1.3 restored text — need **hypothesis audit** (Sobolev domains, trace theorems, compact embeddings)—many are stated as chapter goals, not proved.
5. **Ch.3 eigenfield curl chain:** must match **outgoing \(h_\ell^{(2)}\)** and **Ch.1 VSW magnetic pairing** after sign conversion.

### Not fully audited in Stage A

- Line-by-line proof closure for all `theorem` environments in Ch.3–4 (~hundreds of labeled results).
- Complete bibliography primary-source pin for Hansen / Brown / Tai normalization variants.

---

## 6. Figures and assets (F)

### Critical

| Item | Evidence | Required action |
|------|----------|---------------|
| **Figure 4.2** | `Volume-I-Author-Review-425-516.pdf` p.4 text: `[Figure asset missing] figs/vol-I/ch4-synthesis-E(N)-sets.pdf` | Restore vector source or replace with TikZ; caption describes `𝒮_real` vs `ℰ_acc^(N)` |
| **VolIFigInclude mechanism** | `latex/fig-macros.tex` warns on unknown slugs | Inventory all slugs; zero missing at release |

### Systemic

- Ch.2–4 rely on **workflow box TikZ** (`ch1box` pipelines) similar to pre-transformation Ch.3 intro—needs **field-geometry figures**, not only process boxes.
- Ch.3 `fig:ch3.laboratory-chain` — caption still discusses chapter ownership — replace with physics diagram.

**Count (labels in TeX):** Ch.4 ≥40 `fig:ch4.*` labels; full register deferred to Stage C figure pass.

---

## 7. Authorial quality / process language (G)

**High density in Ch.2–4:**

- `Stage N`, `restore-orig`, archive line comments.
- `PHYSICAL-MEMORY`, `PHYSICAL-HISTORY`, `physicalvignette` blocks (some valuable; many repeat chapter purpose).
- Volume-I “thesis” sentences (`finite geometry limits realizable...`, `pal2026`).
- Mechanical signposting: “The sections follow laboratory order…”, “Convention 3.0A”.

**Transformation rule:** retain **scientific** limitations; remove **production** vocabulary and chapter-workflow diagrams from body text.

---

## 8. Primary sources (E) — Stage A scope

Ch.2–4 cite Stratton, Harrington, Hansen, Chu, Devaney appropriately in spirit, but **equation-level verification register does not exist yet** for Ch.2–4.

**Ch.1 authentication gaps (inherit):** MIT TR-064 binary not pinned; does not block Ch.2–4 unless Chu details are re-derived there.

**Action for Stage B:** build `VOLUME_I_PRIMARY_SOURCE_REGISTER.csv` starting with:
- Stratton VSW / radiation integrals
- Hansen normalization
- Collin equivalence / aperture
- Chu electrical size / minimum Q (scope only)

---

## 9. Recommended coordinated architecture (post-audit)

### Phase order for rewrite (Stage B)

1. **Volume convention lock** (+jω, outgoing, normals) — single `VOLUME_I_CONVENTIONS.md` + patch `latex/frontmatter.tex` and all Ch.2–4 preambles.
2. **Ch.2 classical core:** sources → Green → radiation condition → radiation integrals → NR null space → angular spectrum (operators last, not first).
3. **Ch.3:** rotations → vector Maxwell covariance → VSH definitions (match Ch.1 outgoing) → eigenrelations → normalization → measurement composition.
4. **Ch.4:** definitions `𝒮_real`, `ℰ_acc` → inherit `ℛ_ω` from Ch.2 → rank/truncation only after operator definition → examples with published \((k_0 a, \varepsilon, d_{\mathrm{eff}}, N)\).

### Branch plan

- **Frozen:** `chapter1-benchmark-20261114-a05b9cce`
- **Working:** `volume-i/ch2-4-coordinated-transformation` (create next; **no Ch.1 edits**)

### Deliverables checklist (Stages B–C)

Per master directive §19 — to be produced on transformation branch, not in this audit commit.

---

## 10. Release classification (pre-transformation)

| Unit | Classification | Rationale |
|------|----------------|-----------|
| **Ch. 1** | **Release-ready benchmark** | Author PDF verified; frozen tag pushed |
| **Ch. 2** | **Not ready** | Process prose; convention conflict; fragmented Stage restoration |
| **Ch. 3** | **Not ready** | Pipeline voice; operator-before-fields; normalization chain not audit-closed |
| **Ch. 4** | **Not ready** | Missing Fig. 4.2; rank claims ahead of operator proofs; convention conflict |
| **Volume I (2–4)** | **Not ready** | No continuous argument until coordinated rewrite + adversarial pass |

---

## 11. Explicit non-actions (this commit)

- No edits to `latex/ch02*.tex`, `ch03.tex`, `ch04.tex` body text.
- No edits to Ch.1 benchmark TeX/PDF.
- **Stage B rewrite authorized only after author acknowledges** this audit and phasor-unification strategy.

---

## 12. Next step for Cursor / author

1. Create branch `volume-i/ch2-4-coordinated-transformation` from `chapter1-benchmark-20261114-a05b9cce` (or current `chapter1/classical-illustration-problems-final` at same commit).
2. Author confirms: **Volume I phasor = Ch.1 benchmark `exp(+jωt)`** for Ch.2–4 conversion (recommended).
3. Execute **Stage B** integrated rewrite per §9, then **Stage C** adversarial closure.

**Git status (2026-11-14):**

- Commit `aa5bfbe`: `VOLUME_I_RELEASE/` benchmark manifest + PDF copy  
- Tag pushed: `chapter1-benchmark-20261114-a05b9cce`  
- Branch pushed: `chapter1/classical-illustration-problems-final`  
- Parent commit `2062193`: full Ch.1 classical problems/figure pass  