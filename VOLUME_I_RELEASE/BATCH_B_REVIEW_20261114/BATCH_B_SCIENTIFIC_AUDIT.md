# Batch B — Scientific audit (Chapters 2–4)

**Branch:** `volume-i/ch2-4-coordinated-transformation`  
**Start HEAD:** `6168dd0`  
**Chapter 1:** not edited.

## 1. Sources rewritten (saved on disk)

| Location | Content |
|----------|---------|
| `restore-orig-002` | Hypothesis chain after `prop:ch2.Pirad-well-defined` (Sommerfeld → Green → limit). |
| `restore-orig-015` | `prop:ch2.dyadic-curl-curl-green` + proof (homogeneous + distributional curl--curl). |
| `restore-orig-021` | Outward Poynting sign under $\eim$; link $G_0$/dyad to `eq:ch2.far-amplitude-limit`. |
| `restore-orig-023` | Expanded uniqueness closing (flux → no transverse radiation → trivial difference). |
| `restore-orig-013` | Build fix: `$\eim$` in text mode (line 84). |
| `ch03.tex` §3.2.1 | `prop:ch3.generator-from-finite-rotation`, `eq:ch3.orbital-generator-from-Tg` with proof. |
| `ch04.tex` §4.4.3 | `eq:ch4.source-mode-coupling-integral`; removed `physicalvignette` blocks; tail bound tied to Bessel/Hankel scaling. |

## 2. Claim status

| Item | Status |
|------|--------|
| $\Pi_{\mathrm{rad}}$ hypothesis chain | **Restricted** — logical dependencies explicit; multipole existence still cited, not fully re-derived in §2.0.1. |
| Scalar $G_0$ distributional identity | **Proved** away from coincidence (Batch A); unchanged. |
| Dyadic curl--curl | **Partial** — column-wise homogeneous identity claimed; distributional identity via scalar Green + IBP; full component-wise verification not expanded. |
| Sommerfeld + $\eim$ flux sign | **Stated** with Poynting argument; not a full theorem. |
| Exterior uniqueness evanescent step | **Improved** but still **restricted** — relies on zero transverse flux + uniqueness for $\Jimp=0$. |
| Infinitesimal generator from $T_g$ | **Proved** to $\mathcal{O}(\varphi^2)$ for smooth $\mathbf{F}$ (orbital part). |
| Source–mode coupling | **Defined** in §4.4.3; full equivalence to `eq:ch4.modal-coupling-integral` (§4.5.2) not yet proved. |
| `eq:ch4.high-ell-decay` | **Restricted engineering envelope** — derivation sketched via Bessel/Hankel; not an exact theorem for all $\Jimp$. |

## 3. Build / review package

- **Driver:** `latex/main-vol1-stage10.tex` (Ch.1–4, shared preamble, bibliography).
- **Script:** `latex/build-review-batch-b.ps1`
- **Instructions:** `VOLUME_I_RELEASE/BATCH_B_REVIEW_20261114/BUILD_INSTRUCTIONS.txt`
- **Sources mirror:** `VOLUME_I_RELEASE/BATCH_B_REVIEW_20261114/sources/` (populated on successful script run).
- **Review PDF:** `VOLUME_I_REVIEW.pdf` when `latexmk` completes without fatal errors.

Standalone `main-ch02-only` builds remain **not** review-ready (missing Ch.1 labels). Use Volume I integration driver only.

**Build status (this batch):** Volume I `latexmk` was run; an earlier fatal error in `restore-orig-013` (`\eim` outside math) was corrected. Re-run `build-review-batch-b.ps1` and inspect `BUILD_LOG.txt` for undefined-reference and citation counts before treating the PDF as review-ready.

## 4. Remaining critical gaps (Batch C onward)

- Full dyadic distributional proof line-by-line.
- `restore-orig-022`: align $\mathcal{O}_{\mathrm{out}}$ with Batch A $\Pi_{\mathrm{rad}}$ (avoid contradictory idempotence on $\mathcal{F}_\Omega$).
- Ch.3: commutator algebra for $\mathbf{J}$; orthogonality/completeness with explicit $(\cdot,\cdot)_{\mathrm{rad}}$.
- Ch.4: prove equivalence of `eq:ch4.source-mode-coupling-integral` and `eq:ch4.modal-coupling-integral`; weaken $(k_0 a)^2$ rank slogans to operator estimates.
- Paragraph-wise purge of `physicalvignette`, `PHYSICAL-MEMORY`, admin prose (thousands of lines remain).
- Per-chapter PDF extraction from Volume I (page ranges) — TODO in next build script revision.

## 5. Cross-chapter

- `eq:ch4.source-mode-coupling-integral` uses $\mathcal{R}_\omega$, dyadic §2.3.1, VSH §3.4.1.
- Sommerfeld §2.4.1 explicitly feeds `prop:ch2.Pirad-well-defined` hypothesis list.

## 6. Next batch

**Batch C:** uniqueness surface terms, reciprocity, `eq:ch4.high-ell-decay` from integral bounds, VSH orthogonality spaces.