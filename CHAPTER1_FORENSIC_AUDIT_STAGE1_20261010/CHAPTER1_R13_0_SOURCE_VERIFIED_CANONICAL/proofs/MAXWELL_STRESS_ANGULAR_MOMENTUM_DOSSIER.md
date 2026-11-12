# Maxwell stress, force, angular momentum — dossier (R13.0, post-99db005)

**Convention:** \(\exp(+j\omega t)\); vacuum stress indices \(\partial_j T_{ij}\); outward flux \(\Phi_{J,\mathrm{out}}=-\oint \mathbf{r}\times(\langle\mathbf T\rangle\cdot\hat{\mathbf n})\,dS\).

## Route A — verified

| Item | Manuscript | Status |
|------|------------|--------|
| Momentum balance | `ch1.momentum-balance-instantaneous` | DERIVED |
| Stress tensor | `ch1.maxwell-stress-components`, `ch1.maxwell-stress` | DERIVED |
| Product rule | `ch1.angular-momentum-product-rule` | DERIVED |
| Symmetric stress kills \(\varepsilon_{ijk}T_{kj}\) | `ch1.angular-momentum-balance` | DERIVED |
| \(\mathbf f_{\mathrm{matter}}=\mathbf f_{\mathrm{src}}\) | Lorentz + carrier ID | Route A only |

## Route B — vacuum shell (2026-11-12)

| Item | Manuscript | Status |
|------|------------|--------|
| \(\mathcal V_{\mathrm{vac}}=V_o\setminus\overline B\) | Prose after `ch1.momentum-integral-balance` | STATED |
| Momentum on shell | `ch1.route-b-momentum-shell` | DERIVED (integrate `ch1.momentum-balance-instantaneous`, \(\mathbf f_{\mathrm{src}}=0\)) |
| Torque on shell | `ch1.route-b-torque-shell` | DERIVED (moment of Route B momentum) |
| Single outer surface reduction | `ch1.torque-stress-surface`, `ch1.outward-am-flux` | QUALIFIED (storage + inner \(S_i\) terms) |

**Normal conventions:** \(\hat{\mathbf n}_o\) outward from \(\mathcal V_{\mathrm{vac}}\) on \(S_o\); \(\hat{\mathbf n}_i\) outward from \(\mathcal V_{\mathrm{vac}}\) on \(S_i\) (into vacuum away from body).

## Equation routing table (audit only)

| Label | Control region | Contents | Route | Result |
|-------|----------------|----------|-------|--------|
| `ch1.momentum-balance-instantaneous` | vacuum/source | \(\E,\B\) vacuum | local | \(\partial_t\mathbf g+\mathbf f_{\mathrm{src}}=\nabla\cdot\mathbf T\) |
| `ch1.momentum-integral-balance` | \(V\) vacuum | carriers or bookkeeping | A / B | A: volume=Lorentz; B: **not** through matter |
| `ch1.route-b-momentum-shell` | \(\mathcal V_{\mathrm{vac}}\) | source-free vacuum | B | two-surface + storage |
| `ch1.route-b-torque-shell` | \(\mathcal V_{\mathrm{vac}}\) | source-free vacuum | B | two-surface + \(\mathbf j_{\mathrm{em}}\) storage |
| `ch1.linear-momentum-balance` | harmonic vacuum | steady phasor | A local | \(\langle\mathbf f_{\mathrm{src}}\rangle=\nabla\cdot\Tavg\) |
| `ch1.angular-balance-integral` | \(V_m\) | vacuum identity assumed | A/B qualified | volume + \(\oint \mathcal M\cdot\hat n\) |
| `ch1.torque-stress-surface` | \(V_m\) / \(\partial V_m\) | mechanical torque | A primary; B shell | storage term retained |
| `ch1.stress-moment-integral` | \(\partial V_m\) | \(\mathcal T_J\) | either | not equal to \(\Phi_{J,\mathrm{out}}\) |
| `ch1.outward-am-flux` | \(\partial V_m\) | transport | either | \(\Phi_{J,\mathrm{out}}=-\mathcal T_J\) |
| `intro-momentum-balance` | preview | — | qualified 2026-11-12 | no bare \(\mathbf F=\oint\mathbf T\) |

## Beth bridge

Open-disk CP stress moment **vanishes** (manuscript §1.6.1). \(P/\omega\), \(2P/\omega\) scales **not** derived from that integral — see `BETH_TORQUE_PRIMARY_SOURCE_DOSSIER.md`.

## Open

- Material stress inside dissipative media (Stratton cited, not re-derived).
- Full Beth 1936 equation-level verification.
