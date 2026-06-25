# Phase VIII-D — Doctrine thinning report (−35% strict)

**Date:** 2026-06-25  
**Gate:** `scripts/VolI-Phase8D-Doctrine-Thinning.ps1 -VerifyOnly` — **PASS**

---

## Token reduction

| Metric | Value |
|--------|------:|
| Baseline (pre-thinning) | 707 |
| After thinning | 377 |
| Reduction | **46.7%** |
| Target | ≥ 35% |

Per-chapter after counts (`VolI-Phase8-Doctrine-Count.ps1`):

| File | Tokens |
|------|-------:|
| `ch01.tex` | 71 |
| `ch02.tex` | 127 |
| `ch03.tex` | 82 |
| `ch04.tex` | 100 |
| **Total** | **380** |

*(Verify gate uses frozen baseline file `TOC/VOL-I-PHASE8D-DOCTRINE-BASELINE-TOTAL.txt`; live counter may differ slightly by token regex.)*

---

## Thinning policy (strict)

1. **HOME once per concept per chapter** — first occurrence keeps the doctrine word (`admissibility`, `realizability`, `accessibility`, `observability`); later occurrences in the same subsection rotate to symbols, wattmeters, or `\ref{}` targets.
2. **Inheritance zones exempt** — §1.7, §2.11, §3.11 (`sec:ch3inherit`), §4.11 Summary retain full ladder prose.
3. **Meta-phrase purge** — `without reopening`, `invoked by reference`, `not re-derived`, `pass forward`, etc., replaced or deleted globally.
4. **Principle HOME compressions** — e.g. `prin:ch1.progressive-admissibility` → one-line symbol ladder; `prin:ch2.radiative-accessibility` → $\mathcal{F}_{\mathrm{rad}}$ + probe-rank cap.
5. **Lemma → physical consequence** — repeated certification lemmas thinned to rank gap, reactive mimicry, and watt-failure laboratory readings (see samples below).

---

## Physical-consequence rewrites (samples)

| Prior pattern | After (physical) |
|---------------|------------------|
| Four-way taxonomy disclaimer | *Confusing them produces rank gaps and watt failures on $\Gamma_R$.* |
| `lem:ch4.instrument-rank-gap` | Six probes cannot resolve nine watt-distinguishable export directions when geometry exports nine modes |
| Reactive near-field density vs propagating export | Evanescent sheets raise $\mathcal{A}_{\mathrm{react}}^{(N)}$ without moving $\widetilde{\mathbf{c}}$ on $\mathcal{F}_{\mathrm{rad}}$ |
| Synthesis residual vs range residual | MoM fit can be small while $\|\mathbf{r}_\perp\|/\|\mathbf{c}\|$ signals unreachable weight — variational closeness ≠ synthesizable |
| Instrument saturation | Publishing $(k_0 a,\varepsilon,d_{\mathrm{eff}},N)$ together; omitting $N$ misattributes instrument rank gap to synthesis error |

---

## Label safety (post-pass repair)

Initial `-Apply` corrupted `\label{}` / `\eqref{}` stems when doctrine words appeared inside keys. **Fixed** by:

- `Thin-DoctrineWords` now skips `\label`, `\ref`, `\eqref`, `\cite` blocks.
- `scripts/VolI-Phase8D-Restore-Labels.ps1` — automatic sandwich after every `-Apply`; expanded mappings for `accessibility` thinning artifacts (`rank-$N$ recovery`, `probe rank` in keys) and realizability stems (`synthesizable-screen` → `realizability-screen`).

**Preserved principle labels:** `prin:ch1.progressive-admissibility`, `prin:ch2.radiative-accessibility`, `prin:ch3.osr-separation`, `prin:ch4.excitation-primitive`, `prin:ch4.operator-composition`.

---

## Companion gates (unchanged)

| Phase | Script | Status |
|-------|--------|--------|
| VIII-A voice | `VolI-Phase8-Voice-ZeroTolerance.ps1 -VerifyOnly` | PASS |
| VIII-C invisibility | `VolI-Phase8C-Architecture-Invisibility.ps1 -VerifyOnly` | PASS |
| VIII-D doctrine | `VolI-Phase8D-Doctrine-Thinning.ps1 -VerifyOnly` | PASS |

---

## Scripts

```powershell
.\scripts\VolI-Phase8D-Doctrine-Thinning.ps1 -Apply    # thinning + label restore
.\scripts\VolI-Phase8D-Restore-Labels.ps1             # manual repair if needed
.\scripts\VolI-Phase8D-Doctrine-Thinning.ps1 -VerifyOnly
.\scripts\Build-VolumeI-Final.ps1
```

**Do not re-run `-Apply`** without the restore sandwich unless label guards are confirmed.

---

## Deliverable

`review/Volume-I-FINAL-PreFreeze-*pp-*.pdf` (rebuilt after label restore).
