# Chapter 2 — Notation Map (Stage 2 update)

**Stage 1 rule:** Record only. **Stage 2:** Single global decisions recorded here (no repeated renames in later passes).

---

## Locked / proposed symbols (transformation pass)

| Symbol | Role | Domain → Codomain | Stage 2 status |
|--------|------|-------------------|----------------|
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

---

## Time convention (Volume I)

| Artifact | Convention |
|----------|------------|
| **Proposed authoritative (AD-001)** | \(\exp(+\jj\omega t)\), \(\partial_t\to+\jj\omega\), outgoing \(\exp(-\jj kr)\) |
| **Current `latex/ch02.tex`** | \(\exp(-\jj\omega t)\) |
| **Ch.1 MICROR1 snapshot** | \(\exp(+\jj\omega t)\) |
| **`book-consistency.mdc`** | \(\exp(-j\omega t)\) — **reconcile if AD-001 approved (AD-007)** |

**No silent manuscript change until AD-001 approved.**

---

## Collisions resolved (Stage 2)

1. **\(\mathcal{M}_\omega\)** — Maxwell **only**; measurement → **\(\mathcal{Q}_\omega\)** (pending AD-002).  
2. **\(\Pi_{\mathrm{rad}}\)** — not Hilbert “projection” without metric; use **extraction map** language (AD-003).

---

## Macros

Unchanged: `latex/macros.tex`, Ch.1 TikZ styles. Transformation pass must not introduce duplicate operator macros.
