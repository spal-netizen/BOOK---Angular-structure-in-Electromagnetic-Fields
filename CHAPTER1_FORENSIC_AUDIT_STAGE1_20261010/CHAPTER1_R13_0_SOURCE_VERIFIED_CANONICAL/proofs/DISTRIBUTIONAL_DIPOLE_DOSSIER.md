# Distributional electric point dipole — proof dossier (R13.0, revised 2026-11-12)

**Convention:** $e^{+j\omega t}$, $G=e^{-jkr}/(4\pi r)$, $(\nabla^2+k^2)G=-\delta^3$.

**Correct magnetic field (SI):** $\mathbf H=j\omega\,\nabla G\times\mathbf p$ from $\mathbf H=\mu_0^{-1}\curl\mathbf A$ with $\mathbf A=j\omega\mu_0\mathbf p G$. **Do not** insert an extra $1/\mu_0$ in $\mathbf H$.

## Sources

\[
\rho=-\mathbf p\cdot\nabla\delta^3,\quad \mathbf J_{\mathrm{imp}}=j\omega\mathbf p\,\delta^3,\quad
\nabla\cdot\mathbf J_{\mathrm{imp}}+j\omega\rho=0.
\]

## Fields

\[
\mathbf E=\frac{1}{\epsilon_0}\left[k^2\mathbf p G+(\nabla\nabla G)\cdot\mathbf p\right],\quad
\mathbf H=j\omega\,\nabla G\times\mathbf p.
\]

## Maxwell rows (distributional)

| Law | Method | Status |
|-----|--------|--------|
| Gauss $\mathbf E$ | $(\nabla^2+k^2)G=-\delta^3$ on $\mathbf p\cdot\nabla G$ | DERIVED |
| Gauss $\mathbf H$ | $\mathbf H\propto\nabla G\times\mathbf p$ | DERIVED |
| Faraday | $\curl(\nabla\nabla G\cdot\mathbf p)=0$; $\curl\mathbf E=(k^2/\epsilon_0)\nabla G\times\mathbf p=-j\omega\mu_0\mathbf H$ | DERIVED (Eq. `ch1.dipole-faraday-distributional`) |
| Ampère | $\curl(\nabla G\times\mathbf p)=\nabla(\mathbf p\cdot\nabla G)+k^2\mathbf p G+\mathbf p\delta^3$; $\curl\mathbf H=j\omega\epsilon_0\mathbf E+\mathbf J_{\mathrm{imp}}$ | DERIVED (Eq. `ch1.dipole-ampere-distributional`) |
| Lorenz | Pointwise $\nabla\cdot\mathbf A+j\omega\mu_0\epsilon_0\phi=j\omega\mu_0\mathbf p\cdot\nabla G-j\omega\mu_0\mathbf p\cdot\nabla G=0$ from Eq. `ch1.dipole-A-from-source` | **CORRECTED** (removed erroneous weak form missing $\mu_0$ on second term); displayed Eq. `ch1.dipole-lorenz-gauge` |

## Hessian / principal volume (manuscript language corrected)

- For $r>0$: classical smooth kernel $-(3\hat r_i\hat r_j-\delta_{ij})/(4\pi r^3)$.
- In $\mathcal{D}'(\mathbb{R}^3)$: principal-value part **plus** spherical contact $-\frac13\delta_{ij}\delta^3$.
- **Not conflated:** distributional identity (fixed) vs Yaghjian depolarisation dyadic for nonspherical exclusion volumes (geometry-dependent limit).

**Yaghjian primary sources:** project copies under prior audit trees; 1980 NIST PDF + 1982 delta paper cited at claim level, not re-audited equation-by-equation this batch.
