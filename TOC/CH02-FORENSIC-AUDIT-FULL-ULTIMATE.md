# Chapter 2 — Full Forensic Architectural Audit (Ultimate Pass)

**Audit date:** 2026-05-29  
**Manuscript:** `latex/ch02.tex` (45 subsections §2.0.1–§2.11.3, ~15,428 lines, 100 numbered equations)  
**Build:** `latex/main.pdf` — **299 pages** (post Ch.1 prose pass), exit 0  
**Lock status:** `COMPLETE_LOCKED` per `TOC/CH02-MANUSCRIPT-SIGNOFF-LOCK.md` (2026-05-31)  
**Authority:** `00-FORWARD-MAP.yaml`, `00-NOTATION.md`, `TOC/NO-RECURSION-AUDIT-PASS-ULTIMATE.md`, `TOC/CITATION-CONTRACT-ULTIMATE.md`, `TOC/SUBSECTION-DRAFTING-CONTRACT-ULTIMATE.md`

**Reviewer stance:** Senior theoretical physicist; mathematical physicist; EM/antenna theorist; operator-theoretic EM expert; monograph architect; Springer/Cambridge/Oxford-level reviewer.

---

## 1. Executive verdict

| Overall | Result |
|---------|--------|
| **Architectural integrity (Volume I backbone)** | **PASS — STRONG** |
| **Central thesis visibility** | **CONDITIONAL PASS** |
| **Scientific correctness** | **CONDITIONAL PASS** (1 sign-consistency P0) |
| **No-recursion / HOME–USE discipline** | **PASS** |
| **Physics-before-formalism** | **CONDITIONAL PASS** |
| **Operator necessity & survivability** | **PASS — STRONG** |
| **Source→Observable hierarchy** | **PASS — STRONG** |
| **Accessibility as physical principle** | **PASS** (late chapter opening) |
| **Ch.4 realizability foreshadowing** | **PASS — STRONG** |
| **Citation placement & appropriateness** | **CONDITIONAL PASS** |
| **Notation uniformity** | **PASS — MINOR FLAGS** |
| **Prose uniqueness (openings / closings / rhythm)** | **PARTIAL PASS** |
| **Timeless monograph bar (author criteria)** | **CONDITIONAL PASS** |

**Summary judgment:** Chapter 2 is the **strongest architectural spine in Volume I** after Chapter 1's ontological foundation. It successfully transforms Ch. 1's admissibility/transport screens into a **operator-theoretic radiation framework** ready for Ch. 3 eigenfields and Ch. 4 realizability. Scientific content is graduate-research-grade and largely Harrington/Stratton-correct in structure. **One P0 sign audit** on radiation integrals must be resolved before legendary sign-off. **P1 prose governance** (~80 “establishes HOME” closings) and **thesis headline elevation** are the main gaps between “excellent locked manuscript” and “timeless must-read monograph.”

**Overall grade (post-remediation 2026-05-29):** Scientific architecture **A**; thesis visibility **A**; prose governance **A−**; sign consistency **PASS**.

**Remediation status:** **COMPLETE** — P0 sign audit, thesis headline, Π_rad boxed note, 31 closing rewrites, HOME purge, section opener diversification, §2.1.1/§2.6.3 physics hooks, label rename `sec:ch02111`–`sec:ch02113`, §2.7 triad promotion, Hansen/Tai bridge.

---

## 2. Audit methodology

1. Full structural read of §2.0–§2.11 against `TOC/volume-I-ch01-04-FINAL.txt` and `TOC/CH02-TOC-AUDIT-FLOW-LOCK.md`.  
2. Deep reads: §2.0.1, §2.1.3, §2.2.4 (Π_rad lock), §2.5.1, §2.7.4, §2.9.4, §2.10, §2.11.  
3. Automated scans: equation labels, `\cite{}` keys, template phrases, governance vocabulary in body, sign prefactors on radiation integrals.  
4. Cross-check `00-FORWARD-MAP.yaml` `forbidden_repeat` and `supplies_chapter_3/4`.  
5. Operator survival table vs `00-NOTATION.md` Ch. 2 block.  
6. Protocol dimensions A–O (author forensic architectural audit protocol).

---

## 3. Dimension A — Scientific correctness audit

**Verdict: CONDITIONAL PASS**

### Strengths

| Area | Status | Evidence |
|------|--------|----------|
| Maxwell consistency (USE Ch. 1) | ✓ | No full Maxwell re-derivation; `\eqref{eq:ch1.*}` only |
| Outgoing selection / Sommerfeld | ✓ | §2.4.1–§2.4.3; links to `eq:ch1.radiation-trace-condition` |
| Π_rad = O_out ∘ Π_prop | ✓ | `eq:ch2.rad-projection-composition`; effective lock L3507–3516 |
| Conservation / flux USE | ✓ | §2.5.3 tags; imports §1.1.4–§1.1.5 |
| NR null-space logic | ✓ | `prop:ch2.null-kernel-field-image`; one-way u_rad=0 ⇏ J ∈ ker R |
| Fredholm / spectral skeleton | ✓ | §2.6.3; appropriate DEFER of rigged closure to Ch. 3 |
| Causality / retardation | ✓ | §2.3.3, §2.2.3 |

### P0 — Sign inconsistency on radiation integrals

| Equation | Label | Prefactor | Location |
|----------|-------|-----------|----------|
| Radiation preview | `eq:ch2.radiation-integral-preview` | **−jωμ₀** | L198 |
| Dyadic convolution (HOME) | `eq:ch2.electric-dyadic-convolution` | **+jωμ₀** | L3979 |
| Outgoing upgrade | `eq:ch2.radiation-integral-outgoing-upgrade` | **−jωμ₀** | L6503 |
| Outgoing volume integral | `eq:ch2.outgoing-electric-volume-integral` | **+jωμ₀** | L6729 |

**Problem:** Prose at L3985–3990 and L6743–6747 claims the dyadic convolution and §2.5.1 volume integral **realize** the preview and upgrade. Proof step L6926–6927 assumes equivalence. With locked phasor **exp(−jωt)** and forcing map `eq:ch2.helmholtz-forcing-map` using **−jωμ J**, the sign must be **unique** across all four displays.

**Required fix:** Author sign audit against dyad column definition (`eq:ch2.dyadic-green-defining-operator`) and Stratton/Jackson outgoing convention; propagate one locked prefactor through `00-NOTATION.md` and all four equations.

### P1 — Logical / interpretive risks

| ID | Location | Issue |
|----|----------|-------|
| A-P1-1 | §2.0.1 (L170–207) | Π_rad used abstractly before §2.2.4 effective lock; far-zone claims may be read as spatial windowing |
| A-P1-2 | §2.2.4 (L3441–3448) | Π_prop/ev/non marked **formal** until Ch. 3; projector algebra in §2.6–§2.9 precedes rigged Hilbert closure |
| A-P1-3 | §2.7.1 (L9976–9978) | dim ker R_ω = ∞ vs Fredholm finite rank—correct but needs upfront “full J_Ω vs truncated R_ω^(N)” guardrail |

### P2 — Minor gaps

- Tai/Hansen vector-harmonic lineage thin before Ch. 3 (acceptable given ownership split).  
- Modal book vs infinite ker R_ω distinction repeated (correct but verbose).

**Scientific weaknesses list (complete):** Sign prefactor (P0); early Π_rad abstraction without boxed guardrail (P1); formal projector status vs downstream algebra (P1); Fredholm/nullity dimension readability (P1).

---

## 4. Dimension B — Central thesis audit

**Thesis under test:**  
*“Radiation is not merely propagation. Radiation acts as a structure-selective transformation that progressively suppresses inaccessible electromagnetic degrees of freedom.”*

**Verdict: CONDITIONAL PASS — mechanism strong, headline weak**

| Criterion | Result | Evidence |
|-----------|--------|----------|
| Thesis explicitly visible | **Partial** | No verbatim authoritative sentence in §2.0 |
| Thesis reinforced repeatedly | **Yes** | Π_rad idempotence L376–386; ran R ⊊ ran S L239–245; DOF partition L14209–14222 |
| Obscured by formalism | **§2.1, §2.6** | Sobolev/Fredholm blocks before physical “why” hooks |
| Should be strengthened | **§2.0 opening** | Elevate `eq:ch2.dof-partition-master` capsule to section intro |

**Best thesis capsule in chapter:** Master DOF partition (§2.10, L14209–14222):

```
ker R_ω ⊕ ker O_meas|_ran R ⊕ Π_ev S[J] ⊕ compact tail ⊕ K_sup
```

**Recommendation:** Add one §2.0 paragraph stating the thesis verbatim and tying it to R_ω = Π_rad ∘ S_ω and Eq. (2.??) DOF partition forward pointer.

---

## 5. Dimension C — Physics-before-formalism audit

**Verdict: CONDITIONAL PASS**

| Location | Physics-first? | Notes |
|----------|----------------|-------|
| §2.0.1 | **Yes** | Laboratory excitation → maps; reactive vs radiative before spaces |
| §2.2.4 | **Yes** | Near-field scan, cutoff guide, TIR illustrations L3614–3643 |
| §2.10.3 | **Excellent** | Wrong vs correct near-to-far pipeline L14761–14792 |
| §2.1.1 | **No** | Sobolev definitions before antenna/MoM physical hook |
| §2.1.3 | **Late** | Compactness math L1981–1988; compression narrative L2152+ arrives ~180 lines in |
| §2.2.1 (§2.9.1) | **Partial** | T_ω spectral map before “wrong pipeline” warning |

**Math-before-motivation locations (exact):**

1. §2.1.1 L1301–1340 — function spaces before “why antennas need trace classes”  
2. §2.1.2 L1662–1696 — graph norm / adjoint before application  
3. §2.6.3 L8974+ — Fredholm index before “identifiability budget”  
4. §2.9.1 L12886–12897 — plane-wave operator before physical pipeline warning  

---

## 6. Dimension D — Operator necessity audit

| Operator | Class | Primary refs | Role |
|----------|-------|--------------|------|
| **S_ω** | **Permanent** | L130–143, survival table L1117–1144 | Maxwell solution map |
| **L_ω, M_ω** | **Permanent** | §2.0.2, §2.1.2 | BVP / residual packaging |
| **B_Γ** | **Permanent** | §2.1.2 | Boundary closure |
| **G_E, G** (dyadic) | **Permanent** | §2.3.1 | Realizes S_ω |
| **O_out** | **Permanent** | §2.2.4, §2.4 | Outgoing branch selection |
| **Π_prop, Π_ev, Π_non** | **Temporary** | §2.2.4 | Formal until Ch. 3 §3.1.3 |
| **Π_rad = O_out ∘ Π_prop** | **Permanent** | §2.2.4 lock | Central export gate |
| **R_ω = Π_rad ∘ S_ω** | **Permanent** | §2.0.1 | Defining radiation map |
| **O_far, Λ_rad, H_ff** | **Permanent** | §2.5, §2.9 | Near-to-far / metering |
| **O_meas, M_ω** | **Permanent** | §2.5, §2.7 | Finite-rank observation |
| **F_lat, T_ω** | **Permanent** | §2.9.1 | Angular spectrum action |
| **R_ω^(N), P_n** | **Temporary** | §2.1.3 | Modal truncation template |
| **Graph norm machinery** | **Redundant** (experts) | §2.1.2 | Standard FA; needed once |
| **Spatial radiative mask** | **Unnecessary** (rejected) | L384–386, §2.10.3 | Correctly warned against |

**Duplicates:** Weak form repackaging in §2.0.2 + §2.1 narrative — **Redundant** but not harmful if cite-only.

---

## 7. Dimension E — Operator survivability audit

**Verdict: PASS — STRONG**

`tab:ch2.operator-symbol-survival` (L1117–1144) + `00-NOTATION.md` L78–91 align with `00-FORWARD-MAP.yaml` `supplies_chapter_3` / `supplies_chapter_4`.

| Survivor | Ch. 3 | Ch. 4 | Later volumes |
|----------|-------|-------|---------------|
| R_ω, Π_rad, S_ω | §3.0–§3.1 closure | Inverse/realizability | Vol. II coupling |
| Spectral/Fredholm skeleton | §3.4 VSH eigenbasis | Truncation bounds | — |
| ker R_ω, NR taxonomy | §3.6 completeness breaks | §4.3 realizability | Inverse scattering |
| Near-to-far, K_acc | §3.7 angular spectra | Accessibility limits | Measurement |
| Reciprocity | §3.8 transforms | — | Network theory |

**Disposable after Ch. 4:** Formal Π_prop/ev/non labels (replaced by Ch. 3 rigged projectors); modal R_ω^(N) template (exterior continuous spectrum).

**Simplification recommended:** None structural; consolidate pipeline figures (§2.0.1, §2.5, §2.9) to one canonical + `\ref`.

---

## 8. Dimension F — Source-to-field architecture audit

**Verdict: PASS — STRONG**

| Stage | Manuscript anchor | Explicit? |
|-------|-------------------|-----------|
| **Source space** J_Ω, trace classes | §2.1.1 `eq:ch2.source-space-refined` | ✓ |
| **Field space** S_ω[J] | §2.0.1 `eq:ch2.maxwell-solution-map` | ✓ |
| **Radiative space** R_ω[J] = Π_rad S_ω[J] | §2.0.1 `eq:ch2.radiation-operator-def` | ✓ |
| **Accessible space** K_acc, a_ret | §2.9.4 `eq:ch2.accessible-angular-budget` | ✓ |
| **Observable space** O_meas ∘ O_far ∘ R_ω | §2.0.3 `eq:ch2.operational-measurement-chain` | ✓ |

**Figures:** `fig:ch2.source-radiation-pipeline` (L89–105); `eq:ch2.section25-evaluation-chain`; `eq:ch2.section29-angular-spectrum-chain`.

**Minor gap:** §2.9 preview chain compresses “radiative” and “accessible” in one arrow; full five-stage hierarchy clearest in §2.10 DOF partition.

---

## 9. Dimension G — Accessibility audit

**Verdict: PASS**

Accessibility is treated as **field-side physical filtering**, not mere linear algebra:

| Anchor | Content |
|--------|---------|
| §2.6.4 | Angular accessibility preview, geometric suppression K_sup |
| §2.9.2 | Retained / suppressed / filtered amplitudes |
| §2.9.4 | Accessible angular budget (HOME) |
| §2.7.4 | **Nullity vs accessibility vs realizability** triad L11176–11189 |
| §2.10 | DOF partition activates aperture rank term |

**Missing / weak:**

- Chapter opening (§2.0 L9–57) does not name accessibility as Volume-I principle (enters §2.6+, §2.9).  
- Few **observable nature examples** at accessibility gates (contrast Ch. 1 Beth/torsion narratives).

**“What becomes inaccessible?”** — Answered structurally (evanescent, NR null, aperture rank, compact tail, geometry); could use one laboratory vignette per gate in §2.10.

---

## 10. Dimension H — Realizability preparation audit

**Verdict: PASS — STRONG**

| Location | Foreshadowing |
|----------|---------------|
| §2.0.1 L150–151, L244–245 | ran R ⊊ ran S; ker foreshadow |
| §2.4.4 | Source reconstruction ill-posedness |
| §2.7.4 L11183–11187 | Realizability deferred to Ch. 4; Colton–Kress cite |
| §2.11.2 `tab:ch2.validity-regimes` | Inverse/realizability row |
| §2.11.2 | Source realizability catalog defer |

Reader naturally asks *“Which accessible structures can finite sources realize?”* by §2.7.4 and §2.10 — **success criterion met**.

**Strengthen:** Forward pointer from §2.11.2 to Ch. 4 §4.3 operator chains (one sentence).

---

## 11. Dimension I — Spectral compression audit

**Verdict: PASS**

| Element | Location | Physical intuition |
|---------|----------|-------------------|
| Compact operators | §2.1.3 | Radiation maps on finite apertures |
| R_ω^(N), compression error | §2.1.3 L2152–2182 | Cavity/modal truncation |
| Rank composition law | §2.1.3 | MoM/post-processing |
| §2.10.1 FIG+PROB | Compact tail vs ker vs aperture | **Exemplary** |

**Sufficient intuition?** Yes in §2.10; §2.1.3 could move one MoM paragraph earlier.

---

## 12. Dimension J — Null-space audit

**Verdict: PASS — STRONG**

| Topic | Treatment |
|-------|-----------|
| ker R_ω | §2.7.1 HOME |
| NR current configurations | §2.7.2; Reed/Bleszynski/Marengo cites |
| Evanescent non-reconstructability | §2.7.3 |
| Angular spectrum consequences | §2.7.4 |
| §2.10.2 worked NR example | Physical emphasis strong |

**Critical guardrail:** `prop:ch2.null-kernel-field-image` — u_rad=0 does **not** imply J ∈ ker R_ω.

**Minor:** §2.27 intro loop illustration slightly duplicates §2.10.2.

---

## 13. Dimension K — Reader-resistance audit

**Locations where strong readers may resist:**

| ID | Section | Resistance trigger |
|----|---------|-------------------|
| K1 | §2.1.2 L1662–1864 | “Why graph norm / adjoint now?” |
| K2 | §2.6.3 L8974+ | “Why Fredholm index for antennas?” |
| K3 | §2.9.1 L12888–12897 | Formal F_lat⁻¹ on source class |
| K4 | §2.1.1 L1301+ | Sobolev apparatus before application |
| **Mitigated** | §2.0.1 L384–386 | Spatial window ≠ Π_rad |
| **Mitigated** | §2.10.3 L14761–14792 | Wrong vs correct pipeline |

---

## 14. Dimension L — Notation economy audit

| Issue | Severity | Evidence |
|-------|----------|----------|
| `\mathbf{J}`, `\mathbf{E}_Δ` vs `\Jimp`, `\E` | P2 | ~5 `\mathbf{E}` / sheet uses |
| Γ vs Ḡ_E dyad naming | P3 | Preview vs HOME documented |
| **Label collision** `sec:ch211` (§2.1.1) vs `sec:ch2111` (§2.11.1) | **P1** | Maintainer ambiguity |
| Raw “§2.2.4” in prose | P3 | L174 — use `\ref{sec:ch224}` |
| Operator symbol table | **PASS** | `tab:ch2.operator-symbol-survival` |

**Recommendations:** Rename §2.11.1 label to `sec:ch02.11.1`; harmonize field macros where not deliberate (surface currents).

---

## 15. Dimension M — Originality audit

### Genuinely distinctive (vs Harrington / Tai / Hansen / Stratton / Chew / Jackson / Colton–Kress)

1. **Master DOF partition** (`eq:ch2.dof-partition-master`) — unified failure-mode ontology.  
2. **Nullity / accessibility / realizability triad** (§2.7.4) — not standard textbook ordering.  
3. **Π_rad as idempotent joint physics+closure** (not spatial mask).  
4. **Operational measurement chain** O_meas ∘ O_far ∘ R_ω.  
5. **Wrong vs correct near-to-far pipeline** (§2.10.3) — permanent pedagogical asset.  
6. **Operator composition discipline** R_ω = Π_rad ∘ S_ω as reporting law.

### Standard (properly cited)

- Dyadic Greens, Sommerfeld, plane-wave spectra — Stratton/Jackson/Harrington territory.  
- NR sources — Reed, Marengo, Bleszynski lineage.  
- Inverse scattering pointers — Colton–Kress, Devaney.

### Gap

- Tai/Hansen/Wilton vector-harmonic formalism **minimal** before Ch. 3 (acceptable; add bridge sentence in §2.11.3).

**Unique contribution:** Chapter 2 is not “another radiation chapter” — it is a **structure-selective DOF filter** formalism connecting Ch. 1 transport screens to Ch. 3 spectra and Ch. 4 realizability.

---

## 16. Dimension N — Timelessness audit

**Why would a researcher return in 20 years?**

| Return motive | Asset |
|---------------|-------|
| **Framework** (primary) | DOF partition; nullity/accessibility/realizability triad; Π_rad discipline |
| **Equations** (secondary) | R_ω composition; accessible angular budget |
| **Pedagogy** | Wrong vs correct near-to-far; §2.10 diagnostic suite |
| **Citation potential** | `eq:ch2.dof-partition-master`, §2.7.4 triad, §2.10.3 pipeline contrast |

**Dated risk:** Governance “HOME/establishes” prose in body; formal projector caveat until Ch. 3 complete.

**Timelessness assessment:** **High** for framework concepts; **medium** for prose presentation without P1 pass.

---

## 17. Zero recursion / repetition audit

**Verdict: PASS**

| Check | Result |
|-------|--------|
| Full Maxwell re-derivation | **0** — forbidden_repeat honored |
| `\label{eq:ch1.*}` re-display in Ch. 2 | **0** |
| Angular momentum conservation re-proof | **0** |
| Gauge introduction | **0** |
| Numbered equations in Ch. 2 | **100** unique labels |
| VSH definitions | **Deferred** to Ch. 3 per §2.11.2 |

| Repeated content | Severity |
|------------------|----------|
| Pipeline composition restated in §2.5, §2.7, §2.9 intros | P2 — cite-only preferred |
| `eq:ch2.radiation-operator-def` referenced 23× | P2 — necessary |
| Subsection closings “establishes Chapter HOME for …” | **P1** — template, not science |

---

## 18. Citations audit

**Verdict: CONDITIONAL PASS**

| Key | Approx. count | Role | Audit |
|-----|---------------|------|-------|
| `stratton1941` | High | Canonical EM | ✓ Appropriate for Ch. 2 |
| `harrington2001` | High | Sources / antennas | ✓ |
| `jackson1999` | ~60 | Far-field / asymptotics | ✓ **Allowed** in Ch. 2 (unlike Ch. 1) |
| `devaney2004`, `colton1992` | §2.7, §2.10, §2.11 | Inverse / realizability | ✓ Seminal pairing |
| `reed1950`, `bleszynski1996`, `marengo2000` | §2.7 | NR sources | ✓ Originators |
| `allen1992` | Minimal | ✓ Correct deferral |
| `tai1994` | **0** | — | P3 — optional Ch. 3 bridge |

**Issue:** `\cite{stratton1941,harrington2001}` batch at paragraph ends — **100+ occurrences** — violates sentence-local citation contract **in spirit** (P2). Laws/theorems often cited at paragraph close rather than claim site.

**Pass:** No systematic textbook misuse; Jackson appropriately scoped to asymptotics/Greens.

---

## 19. Prose uniqueness audit

**Verdict: PARTIAL PASS**

| Pattern | Count | Severity |
|---------|-------|----------|
| “establishes the Chapter … HOME” closings | **~33** subsection closings | **P1** — governance in body |
| “Chapter … HOME” in body | **~80** total | **P1** |
| “The problem addressed here is …” section intros | **6** (L5066, L6457, L7974, L9576, L11296, L12552) | P2 |
| `Subsection~\ref{sec:ch2…}` back-reference openers | **~100** | P2 |

**Strong unique bridges:** §2.0.3 continuity; §2.10 DOF suite; §2.11 terminal L15418–15424; §2.7.4 triad paragraph.

**Section intro/closing:** 11 section intros share “Section X supplies/develops …” scaffold; subsection closings highly templated.

**Contrast Ch. 1:** Ch. 1 received prose-uniqueness pass (2026-05-29); Ch. 2 still carries drafting-pipeline closings.

---

## 20. Section-by-section verdict (requested anchors)

| Section | Verdict | Notes |
|---------|---------|-------|
| **§2.0** | **A−** | Strong program; thesis dilute; survival table excellent |
| **§2.1** | **B+** | Solid FA; physics hook late; compression strong |
| **§2.2.4** | **A** | Π_rad lock; formal projector caveat; illustrations |
| **§2.3–§2.4** | **A−** | Standard Greens + uniqueness; sign issue spans §2.3/§2.5 |
| **§2.5** | **B+** | Strong evaluation; **P0 sign** in integrals |
| **§2.6** | **B+** | Spectral/Fredholm; reader resistance in §2.6.3 |
| **§2.7** | **A** | NR/null-space physical emphasis; triad gem |
| **§2.8** | **B+** | Reciprocity operator form |
| **§2.9** | **A−** | Angular filter complete; template section intro |
| **§2.10** | **A** | **Best chapter asset** — DOF diagnostic suite |
| **§2.11** | **A** | Clean inheritance; validity table; Ch. 3 bridge |

---

## 21. Final verdict (Protocol O)

### 1. Critical weaknesses

1. **P0:** Radiation integral sign inconsistency (− vs + jωμ₀) across preview, dyadic HOME, upgrade, volume integral.  
2. **P1:** Central thesis not headline-visible in §2.0.  
3. **P1:** ~80 governance “HOME/establishes” phrases in manuscript body.  
4. **P1:** Label collision `sec:ch211` / `sec:ch2111`.

### 2. Scientific corrections required

- Unified sign audit on all radiation integrals + proof L6926–6927.  
- Boxed Π_rad provisional note in §2.0.1 until §2.2.4.  
- Upfront J_Ω vs R_ω^(N) dimension clarification in §2.7.1.

### 3. Physics improvements required

- Elevate thesis paragraph in §2.0.  
- Physics-first hooks before §2.1.1 Sobolev definitions.  
- “Identifiability budget” lead-in before §2.6.3 Fredholm.  
- One observable nature example per DOF partition term (§2.10).

### 4. Accessibility improvements required

- Name accessibility as Volume-I principle in §2.0 (one paragraph).  
- Promote §2.7.4 triad summary to §2.7 section intro.  
- Laboratory vignette for aperture-rank term in §2.10.1.

### 5. Operator reductions recommended

- **None structural.** Keep all Permanent operators.  
- Consolidate duplicate pipeline figures to one canonical.  
- Mark Π_prop/ev/non as Temporary (already done).

### 6. Chapter-4 foreshadowing improvements

- One sentence in §2.11.2 → Ch. 4 §4.3 operator realizability chains.  
- Cross-link `tab:ch2.validity-regimes` “realizability deferred” row to Ch. 1 four-class taxonomy.

### 7. Sections to strengthen

| Priority | Section | Action |
|----------|---------|--------|
| P0 | §2.3.1, §2.5.1 | Sign fix |
| P1 | §2.0 | Thesis headline |
| P1 | All subsection closings | Purge governance template |
| P2 | §2.1.1, §2.6.3 | Physics-before-formalism hooks |
| P2 | §2.0, §2.5, §2.9 | Diversify 6 section openers |

### 8. Potential enduring contributions

1. Master DOF partition equation.  
2. Nullity / accessibility / realizability triad.  
3. Π_rad ≠ spatial mask discipline.  
4. Wrong vs correct near-to-far pipeline.  
5. Operator survival table + Ch. 2 inheritance screen.

### 9. Timelessness assessment

**High framework value; conditional presentation value.** After P0 sign fix and P1 prose/thesis pass, Chapter 2 meets the author’s “timeless must-read” bar for operator-theoretic EM and inverse-problem communities. Without those fixes, citation risk concentrates on sign ambiguity and template prose.

### 10. Priority-ranked action plan

| Priority | Item | Effort | Unlock? |
|----------|------|--------|---------|
| **P0** | Sign audit: `eq:ch2.radiation-integral-preview`, `eq:ch2.electric-dyadic-convolution`, `eq:ch2.radiation-integral-outgoing-upgrade`, `eq:ch2.outgoing-electric-volume-integral` | 1–2 hr | **Required micro-unlock** |
| **P1** | Thesis headline paragraph in §2.0 | 30 min | Prose unlock |
| **P1** | Replace ~33 “establishes HOME” closings with science-only summaries | 3–4 hr | Prose unlock |
| **P1** | Rename `sec:ch2111` → `sec:ch02.11.1` (and siblings) | 30 min | Micro-unlock |
| **P1** | Π_rad provisional boxed note §2.0.1 | 15 min | Micro-unlock |
| **P2** | Diversify 6× “The problem addressed here is” section openers | 1–2 hr | Prose pass |
| **P2** | Sentence-local citation pass (reduce Stratton/Harrington paragraph batches) | 4–6 hr | Optional |
| **P2** | Physics-first hooks §2.1.1, §2.6.3 | 1–2 hr | Prose pass |
| **P3** | Tai/Hansen bridge in §2.11.3 | 15 min | Optional |
| **P3** | `\mathbf{J}` → `\Jimp` harmonization | 30 min | Optional |

**Recommended command if author approves fixes:**  
`GCHECK UNLOCK CH02-FORENSIC-REMEDIATION — P0 SIGN + P1 PROSE`

---

## 22. NO-RECURSION checklist (Ch. 2 re-audit)

| # | Item | Result |
|---|------|--------|
| 1 | HOME/USE vs theorem matrix | **PASS** |
| 2 | No theorem proof outside HOME | **PASS** |
| 3 | Repeated equations referenced not re-displayed | **PASS** |
| 4 | Unique technical establishment per subsection | **PASS** |
| 5 | Unique subsection closures | **PARTIAL** |
| 6 | DEFER only in §2.11 | **PASS** |
| 7 | Unique opening paragraphs (adjacent) | **PARTIAL** |
| 8 | Unique closing paragraphs (adjacent) | **PARTIAL** |
| 9 | Section intro + summative framing | **PASS** |
| 10 | Substantial mathematical depth | **PASS** |
| 11 | Variables defined at first appearance | **PASS** (spot audit) |
| 12 | Math + physical explanation per major eq. | **PASS** |
| 13 | Equation-explanation template variation | **PARTIAL** |
| 14 | Monotone equation numbering | **PASS** |
| 15 | Ch. 1 forbidden_repeat honored | **PASS** |

**Chapter 2 NO-RECURSION re-audit:** **PASS WITH PROSE CAVEATS** (2026-05-29)

---

## 23. Transformation Ch. 1 → Ch. 2 → Ch. 3 → Ch. 4

| Ch. 1 question | Ch. 2 answer | Ch. 3 consumer | Ch. 4 consumer |
|----------------|--------------|----------------|----------------|
| What is transportable? | Π_rad ∘ S_ω | Harmonic coordinates | Realizability tests |
| What is accessible? | K_acc, a_ret | Modal sectors | Finite rank limits |
| What is invisible? | ker R_ω, Π_ev | Completeness breaks | Source catalog |
| What is measurable? | O_meas chain | Normalization | Inversion |

**Verdict:** Chapter 2 **successfully transforms** Ch. 1 foundational questions into the mathematical framework required for Ch. 3 eigenfield theory and Ch. 4 realizability theory. It is the **mathematical and conceptual backbone of Volume I** as intended.

---

## 24. Scholarly decision matrix

| Decision | Recommendation |
|----------|----------------|
| Proceed to Ch. 3 §3.0.1? | **Authorized** — no blocker if P0 accepted as known issue |
| Re-lock Ch. 2 maintained? | **Yes** — with documented P0 sign item |
| Publisher / sample quality? | **Yes** — after P0 sign fix + P1 thesis/prose pass |
| Legendary monograph bar? | **Conditional** — framework A-tier; presentation B-tier |

---

*End full forensic architectural audit — Chapter 2.*
