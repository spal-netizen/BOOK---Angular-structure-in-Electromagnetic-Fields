# Chapter 2 — Notation Map (Stage 2 update)

**Stage 1 rule:** Record only. **Stage 2:** Single global decisions recorded here (no repeated renames in later passes).

---

## Locked / proposed symbols (transformation pass)

| Symbol | Role | Domain → Codomain | Stage 2 status |
|--------|------|-------------------|----------------|
| \(\mathbf{j}(\mathbf{r},t)\), \(\rho(\mathbf{r},t)\) | Time-domain impressed sources | — | **ADDED R1b** (TD); harmonic \(\Jimp\), \(\rho\) phasors |
| \(\omega\) | Angular frequency | — | PRESERVE |
| \(k_0\) | Vacuum wavenumber | — | PRESERVE |
| \(\Jimp\) | Impressed current | \(\mathcal{J}_\Omega\) | PRESERVE (Ch.1 macro) |
| \(\mathcal{J}_\Omega\) | Admissible sources | — | PRESERVE |
| \(\mathcal{F}_\Omega\) | Maxwell field pairs | — | PRESERVE |
| \(\mathcal{F}_{\mathrm{rad}}\) | Outgoing radiative class | subspace of \(\mathcal{F}_\Omega\) | PRESERVE |
| \(\mathcal{F}_{\mathrm{SF}}\) | Sommerfeld outgoing class | — | PRESERVE |
| \(\mathcal{M}_\omega\) | **Maxwell volume operator** (residuals) | \(\mathcal{D}(\mathcal{M}_\omega)\to\mathcal{Y}_{\mathrm{vol}}\) | **PRESERVE** — Maxwell only |
| \(\mathcal{L}_\omega\) | Composite Maxwell BVP | \(\mathcal{D}(\mathcal{L}_\omega)\to\mathcal{Y}_{\mathrm{vol}}\times\mathcal{Y}_\Gamma\) | PRESERVE |
| \(\mathcal{B}_\Gamma\) | Boundary operator | traces → \(\mathcal{Y}_\Gamma\) | PRESERVE |
| \(\mathcal{S}_\omega\) | Solution map | \(\mathcal{J}_\Omega\to\mathcal{F}_\Omega\) | PRESERVE |
| \(\Pi_{\mathrm{prop}},\Pi_{\mathrm{ev}},\Pi_{\mathrm{non}}\) | Spectral projectors | \(\widehat{\mathcal{F}}_\Omega\) | **FORMAL** until Ch.3 |
| \(\mathcal{O}_{\mathrm{out}}\) | Outgoing wave selector | \(\mathcal{F}_\Omega\to\mathcal{F}_{\mathrm{SF}}\) | PRESERVE |
| \(\Pi_{\mathrm{rad}}\) | **Outgoing radiative extraction** | \(\mathcal{F}_\Omega\to\mathcal{F}_{\mathrm{rad}}\); \(\Pi_{\mathrm{rad}}=\mathcal{O}_{\mathrm{out}}\circ\Pi_{\mathrm{prop}}\) | **TERMINOLOGY AD-003** |
| \(\mathcal{R}_\omega\) | Radiation map | \(\mathcal{J}_\Omega\to\mathcal{F}_{\mathrm{rad}}\) | PRESERVE |
| \(\mathcal{O}_{\mathrm{far}}\) | Far-zone observable | \(\mathcal{F}_{\mathrm{rad}}\to\) obs space | PRESERVE |
| \(\Lambda_{\mathrm{rad}}\) | \(\mathcal{O}_{\mathrm{far}}\circ\mathcal{R}_\omega\) | \(\mathcal{J}_\Omega\to\) obs | PRESERVE |
| \(\mathcal{O}_{\mathrm{meas}}\) | Finite-rank probe | \(\mathcal{F}_{\mathrm{rad}}\to\mathbb{C}^{N}\) | PRESERVE |
| \(\mathcal{Q}_\omega\) | **Proposed lab / inverse observation map** | \(\mathcal{J}_\Omega\to\mathbb{C}^{N}\); \(\mathcal{Q}_\omega=\mathcal{O}_{\mathrm{meas}}\circ\Lambda_{\mathrm{rad}}\) | **AD-002** — replaces misuse of \(\mathcal{M}_\omega\) at `eq:ch2.reconstruction-observation-map` |
| \(\mathcal{D}_J\) | Source admissibility screen | — | PRESERVE |
| \(\ker\mathcal{R}_\omega\), \(\ker\mathcal{Q}_\omega\) | Null spaces | — | Update labels when AD-002 applied |
| \(\mathbf{S}_{\mathrm{rad}}[\Jimp]\) | Radiative Poynting functional | — | **ADDED R1d** (`eq:ch2.poynting-functional-radiative`) |
| \(\mathbf{T}_{\mathrm{rad}}[\Jimp]\) | Radiative Maxwell stress functional | — | **ADDED R1d**; maps via Ch.1 \(\mathbf{T}(\E,\H)\) |
| \(\mathbf{M}_{\mathrm{rad}}[\Jimp]=\mathbf{r}\times\mathbf{T}_{\mathrm{rad}}\) | Angular momentum flux density | — | **ADDED R1d** |
| \(\mathbf{F}_{\mathrm{rad}}(r)\) | Net momentum export through \(S_r\) | N | **ADDED R1d** |
| \(\mathbf{J}_{\mathrm{rad}}(r)\) | Net angular-momentum flux through \(S_r\) | kg·m²/s (mechanical reading) | **ADDED R1d** |
| \(\tau_{\hat{\mathbf{u}}}(r)\) | Torque about axis \(\hat{\mathbf{u}}\) | N·m | **ADDED R1d**; Ch.1 torque gate by `\ref` |

---

## Time convention (Volume I)

| Artifact | Convention |
|----------|------------|
| **Chapter 2 (Stage 4 verified)** | \(\exp(+\jj\omega t)\) via `\eim`; \(\partial_t\to+\jj\omega\); outgoing \(\exp(-\jj kr)\); Maxwell display `eq:ch1.maxwell-local` |
| **Frozen `latex/ch01.tex` prose** | States \(\exp(-\jj\omega t)\); **same** displayed curl system as Ch.2 cites |
| **`book-consistency.mdc`** | \(\exp(-j\omega t)\) — **AD-007** (Volume-I; Ch.1 not edited in Stage 4) |

**Stage 4:** Ch.2 internal consistency **VERIFIED**; Volume-I narrative alignment **AUTHOR DECISION**.

---

## Collisions resolved (Stage 2)

1. **\(\mathcal{M}_\omega\)** — Maxwell **only**; measurement → **\(\mathcal{Q}_\omega\)** (pending AD-002).  
2. **\(\Pi_{\mathrm{rad}}\)** — not Hilbert “projection” without metric; use **extraction map** language (AD-003).

---

## Macros

Unchanged: `latex/macros.tex`, Ch.1 TikZ styles. Transformation pass must not introduce duplicate operator macros.
