# Batch A — Scientific audit (Chapters 2–4 foundations)

**Branch:** `volume-i/ch2-4-coordinated-transformation`  
**Base HEAD at batch start:** `832b1b7`  
**Chapter 1 benchmark:** tag `chapter1-benchmark-20261114-a05b9cce` — not modified this batch.

## 1. Sections rewritten (substantive)

| Chapter | File / region | Change |
|---------|----------------|--------|
| 2 | `restore-orig-002` (§2.0.1) | `eq:ch2.radiative-equivalence`; domain $\mathcal{D}(\Pi_{\mathrm{rad}})$; Proposition `prop:ch2.Pirad-well-defined` expanded (4 items, structured proof). |
| 2 | `restore-orig-015` (§2.3.1) | Proposition `prop:ch2.scalar-green-vacuum` + proof; dyadic–operator consistency paragraph. |
| 2 | `restore-orig-023` (§2.4.3) | Removed duplicate opening; single uniqueness motivation. |
| 3 | `ch03.tex` (§3.0, `prop:ch3.maxwell-rotation-covariance`) | Full covariance proof with `eq:ch3.curl-rotated-E`, SO(3) chain rule. |
| 4 | `ch04.tex` (§4.0.3, `eq:ch4.radiative-rank-operator`) | Cardinality form $r_{\mathrm{rad}}(\varepsilon)=\#\{\ldots\}$; $\sigma_1>0$ hypothesis; physical interpretation; removed `physicalvignette` before `eq:ch4.gamma-SVD`. |

## 2. Claims status

| Claim | Status |
|-------|--------|
| Far amplitude limit for compact $\Jimp$, outgoing vacuum | **Restricted hypotheses** — cited multipole/Sommerfeld literature; full multipole construction not re-derived in §2.0.1. |
| $\mathcal{S}_\omega[\Jimp]\in\mathcal{D}(\Pi_{\mathrm{rad}})$ | **Under same hypotheses as item 1** — proof points to §2.3 Green/multipole chain. |
| $\Pi_{\mathrm{rad}}$ idempotent on equivalence classes | **Proved** in Prop. sense (reads $\mathbf{E}_0$ only); not orthogonality on $\mathcal{F}_\Omega$. |
| Scalar $G_0$ fundamental solution | **Proved away from coincidence**; distributional identity proved via exterior-ball limit; singularity at $\mathbf{r}=\mathbf{r}'$ deferred §2.3.2. |
| Maxwell rotation covariance | **Proved** for source-free isotropic homogeneous regions; failure modes stated. |
| $r_{\mathrm{rad}}(\varepsilon)$ relative SV count | **Defined** on compact $\boldsymbol{\Gamma}_\omega$; $\sigma_1=0$ branch stated; not equated to instrument rank. |

## 3. Sources consulted (not re-verified page-by-page)

- Stratton (1941), Jackson (1999), Sommerfeld (1949), Harrington (2001), Tai (1994), Hansen (1988), Devaney (2004) — via existing `\cite{}` keys in manuscript.

## 4. Defects corrected

- Duplicated §2.4.3 opening paragraphs.
- Proof sketch for `prop:ch3.maxwell-rotation-covariance`.
- Ambiguous `max{}` vs counting interpretation of $r_{\mathrm{rad}}$.
- Non-scientific `physicalvignette` in Ch. 4 SVD lead-in (one block).

## 5. Remaining critical gaps (Batch B+)

- **Ch. 2:** Full dyadic curl--curl derivation (not only pointer); uniqueness proof still relies on `lem:ch2.zero-flux-difference` without full evanescent elimination; compactness/SVD hypotheses in §2.1; prose/`D_J` governance language throughout chapter.
- **Ch. 3:** Infinitesimal generators from finite $T_g$; orthogonality/completeness with explicit inner products; MN curl proof still summary-level at `prop:ch3.MN-curl-identities`.
- **Ch. 4:** Electrical-size decay from source integrals (`eq:ch4.high-ell-decay`); Fig. `ch4-volume-consumption-map` include; paragraph-wise pass; thousands of legacy blocks remain.

## 6. Cross-chapter consistency

- $\Pi_{\mathrm{rad}}$, $\mathcal{R}_\omega$, $\boldsymbol{\Gamma}_\omega$ aligned with Ch. 2 Prop. items (2)–(4).
- Ch. 3 rotation law matches Ch. 1 phasor / isotropic $\varepsilon_0,\mu_0$.

## 7. Build

- **Not run this batch** — next: `latex/main-ch02-only.tex`, `main-ch03-only`, `main-ch04-only` when Batch B edits stabilize.

## 8. Chapter 1 integrity

- **Not re-hashed this batch** — verify before commit/push per manifest.