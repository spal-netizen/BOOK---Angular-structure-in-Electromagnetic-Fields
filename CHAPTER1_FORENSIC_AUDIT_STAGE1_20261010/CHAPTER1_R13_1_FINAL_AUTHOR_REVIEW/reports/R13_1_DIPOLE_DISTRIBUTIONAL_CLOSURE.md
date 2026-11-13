# Distributional dipole closure (R13.1)

**Sources:** Yaghjian 1980 (*Proc. IEEE*), 1982 (*Electromagnetics*); Hessian prescription `eq:ch1.hessian-distributional` (spherical contact $-\frac13\delta_{ij}\delta^3(\mathbf r)$ only).

## Checks

| Law | Method | Status |
|-----|--------|--------|
| Charge continuity | Algebraic in $\mathcal{D}'$ | PASS |
| Lorenz gauge | `eq:ch1.dipole-lorenz-gauge` | PASS |
| Gauss (E) | Weak form + $\nabla^2G$ | PASS |
| Faraday | Curl identity + **weak form** $\langle\curl\E,\boldsymbol\psi\rangle$ (R13.1) | PASS |
| Gauss (B) | Solenoidal $\H$ | PASS |
| Ampère–Maxwell | $\nabla\times(\nabla G\times\mathbf p)$ split + $\nabla^2G=-k^2G-\delta^3$ + **weak form** (R13.1) | PASS |
| Exterior $r>0$ | Eqs. (1.122)–(1.133) restriction | PASS |

## Scope limits (retained)

- Spherical contact term is **chosen prescription**, not general Yaghjian depolarization dyadic.
- No claim to derive full source-region dyadic for arbitrary exclusion geometry.

**Classification:** CLOSED under stated spherical principal-volume hypothesis.
