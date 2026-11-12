# Distributional electric point dipole — proof dossier (R13.0, revised)

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
| Faraday | $\curl(\nabla\nabla G\cdot\mathbf p)=0$; $\curl\mathbf E=(k^2/\epsilon_0)\nabla G\times\mathbf p=-j\omega\mu_0\mathbf H$ | DERIVED (manuscript Eq. dipole-faraday-distributional) |
| Ampère | $\curl(\nabla G\times\mathbf p)=\nabla(\mathbf p\cdot\nabla G)+k^2\mathbf p G+\mathbf p\delta^3$; $\curl\mathbf H=j\omega\epsilon_0\mathbf E+\mathbf J_{\mathrm{imp}}$ | DERIVED (manuscript Eq. dipole-ampere-distributional) |
| Lorenz | Pairing $\langle\nabla\cdot\mathbf A+j\omega\mu_0\epsilon_0\phi,\psi\rangle=0$ | DERIVED |

## Hessian contact

Spherical principal volume: $\partial_i\partial_j(1/4\pi r)=\mathrm{PV}(3\hat r_i\hat r_j-\delta_{ij})/(4\pi r^3)-\frac13\delta_{ij}\delta^3$.

**Limitation:** Shape dependence per Yaghjian 1980; 1982 delta derivation not full-text verified this run.

