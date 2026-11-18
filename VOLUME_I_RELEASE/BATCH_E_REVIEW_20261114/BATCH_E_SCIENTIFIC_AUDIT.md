# Batch E — Scientific, literary, and build status (2026-11-14)

## A. Repository status

| Item | Value |
|------|--------|
| Branch | `volume-i/ch2-4-coordinated-transformation` |
| Start parent | `fa99809` (Batch D) |
| Batch E commit | `c6d7e5e` (parent `fa99809`) |
| Chapter 1 | **Not edited**; hash recorded at build in `CHAPTER1_HASH_CHECK.txt` |

## B. Batch D build resolution

| Check | Result |
|-------|--------|
| PID 21488 | **Still running** at audit time (~27 min elapsed); child **latexmk** (PID 380) and **perl** active |
| Action taken | **Did not terminate** — build still appending to `BATCH_D_REVIEW_20261114/BUILD_LOG.txt` (file lock confirmed) |
| Batch C `BUILD_LOG.txt` | **UTF-16 LE** (Tee-Object); decode to `BUILD_LOG_UTF8.txt` included in `latex/build-review-batch-e.ps1` when file unlocked |
| `VOLUME_I_REVIEW.pdf` (Batch D) | **Not present** in `BATCH_D_REVIEW_20261114/` until latexmk completes |

**Next build:** Run `latex/build-review-batch-e.ps1` after Batch D job finishes or after verified stale termination.

## C. Paragraph reconstruction ledger (complete sections / subsections touched)

| File | Location | Before (summary) | After (summary) |
|------|-----------|------------------|-----------------|
| `restore-orig-017` | §2.3.2 opening (L3–16) | Layered-substrate / probe scatter opening disconnected from coincidence math | MoM–probe separation $R$ narrative tying singularity, vacuum template, and layered calibration |
| `restore-orig-015` | `prop:ch2.dyadic-curl-curl-green` Step 3 | One-line homogeneous claim | Column-wise `eq:ch2.column-curl-curl-check` with $\nabla\times\nabla\times-\nabla^2$ reduction cited |
| `restore-orig-017` | `thm:ch2.dyadic-distributional-fundamental` proof | Short IBP sketch | Explicit $V_\varepsilon$ domain, exterior decay of boundary term, interior sphere $\to f_a(\mathbf{r}')$ |
| `ch03.tex` | §3.4.3 intro (L6336–6345) | Bullet-style disjoint sentences | Continuous paragraph on why radiative inner product, scope limits, VSW vs tangential harmonics |
| `ch03.tex` | `thm:ch3.vsh-orthogonality` proof | Five brief steps | Displayed scalar integral `eq:ch3.Ylm-angular-integral-display`, angular-vector step, radial distinction, `eq:ch3.MN-cross-radiative-display` |
| `ch03.tex` | `thm:ch3.vsh-completeness` proof | Short list | Cauchy partial sums, $\mathcal{F}_{\mathrm{rad}}$ closure, explicit non-claims |
| `ch04.tex` | §4.4.2 body (evanescent) | `$\Pi_{\mathrm{prop}}\Pi_{\mathrm{rad}}$` composition | `$\mathcal{R}_\omega$`, `$\mathcal{C}\circ\mathcal{R}_\omega$` aligned with Ch.2 refinement (5 occurrences) |
| `ch04.tex` | `prop:ch4.source-mode-alignment` proof | “gauge-relative” without invariants | States invariance of $\mathcal{R}_\omega[\Jimp]$, $P_{\mathrm{rad}}$; $\mathcal{Z}_{\ell m}^{(\sigma)}$ as chart factor only |
| `ch04.tex` | `prop:ch4.gamma-compact` proof | Generic compact composition | Hilbert–Schmidt mode functionals on $L^{2}(\Omega_s)^{3}$, link to $r_{\mathrm{rad}}(\varepsilon)$ |

**Not yet reconstructed:** Remainder of Ch.2–4 (majority of sections unchanged).

## D. Scientific classification

| Result | Status | Missing / restriction |
|--------|--------|---------------------|
| `eq:ch2.column-curl-curl-check` ($R>0$) | **PARTIALLY ESTABLISHED** | Intermediate gradient reductions not expanded term-by-term |
| `thm:ch2.dyadic-distributional-fundamental` | **PARTIALLY ESTABLISHED** | Interior-sphere limit cited; full Tai/Stratton column audit still open |
| Exterior uniqueness | **PROVED UNDER STATED RESTRICTIONS** | Unchanged Batch D import of resolvent |
| VSH orthogonality | **PARTIALLY ESTABLISHED** | Angular ladder cited; full $\Gamma_R$ integral still not fully expanded |
| `thm:ch3.vsh-completeness` | **PROVED UNDER STATED RESTRICTIONS** | $\mathcal{F}_{\mathrm{rad}}$ only |
| Source–mode alignment | **PARTIALLY ESTABLISHED** | IBP kernel assembly not displayed |
| `prop:ch4.gamma-compact` | **PARTIALLY ESTABLISHED** | Kernel $L^2$ on $\Omega_s\times\Omega_s$ assumed continuous |

## E. Build status (Batch E)

| Field | Value |
|-------|--------|
| Script | `latex/build-review-batch-e.ps1` |
| PDF | `VOLUME_I_RELEASE/BATCH_E_REVIEW_20261114/VOLUME_I_REVIEW.pdf` when run completes |
| Log | UTF-8 via `Add-Content -Encoding utf8` |

## F. Next batch (F)

1. Finish dyadic coincidence: explicit Lorenz column derivatives (primary-source check against Tai 1994).
2. Display full `∫_Γ_R` orthogonality for one pair $(\ell,m,\mathbf M)$ vs $(\ell',m',\mathbf N)$.
3. §4.4.2 figure/caption: add `$\mathcal{O}_{\mathrm{out}}$` on field chain.
4. Whole-section passes: Ch.2 §2.3–2.4 remainder; Ch.3 §3.4.1–3.4.2; Ch.4 §4.0–4.1 openings.
5. Independent build from Batch E commit; verify Ch.1 PDF byte hash vs manifest.