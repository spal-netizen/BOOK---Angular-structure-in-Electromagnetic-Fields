# Maxwell stress, force, angular momentum — dossier (R13.0 batch E)

**Convention:** \(\exp(+j\omega t)\); vacuum stress; \(\boldsymbol{\Phi}_{J,\mathrm{out}}(V)=-\boldsymbol{\mathcal{T}}_J(V)\).

## Storage domains (release blocker — CLOSED batch E)

| Symbol | Domain | Status |
|--------|--------|--------|
| \(\mathbf{J}_{\mathrm{em,A}}\) | Route~A volume \(V_{\mathrm{A}}\) (vacuum balance + carrier closure) | STATED `eq:ch1.torque-stress-route-a` |
| \(\mathbf{J}_{\mathrm{em,vac}}\) | Source-free shell \(\mathcal{V}_{\mathrm{vac}}=V_o\setminus\overline B\) | STATED `eq:ch1.J-em-vac-def` |
| \(\boldsymbol{\mathcal{T}}_{J,o}\), \(\boldsymbol{\mathcal{T}}_{J,i}\) | Outer \(S_o\), inner \(S_i\) (normal outward from shell) | DERIVED |
| \(\mathbf{T}_{\mathrm{body}}\) | \(-\boldsymbol{\mathcal{T}}_{J,i}\) (vacuum traction on \(S_i\)) | STATED `eq:ch1.route-b-body-force` |

**Removed:** \(\mathbf{J}_{\mathrm{em,store}}\) integrated over material-containing \(V_m\) as Route~B storage.

## Shell derivation chain

1. Local: `eq:ch1.angular-momentum-balance-averaged` with \(\boldsymbol{\tau}_{\mathrm{src}}=\mathbf{0}\) in \(\mathcal{V}_{\mathrm{vac}}\).
2. Integrate over \(\mathcal{V}_{\mathrm{vac}}\) → `eq:ch1.route-b-torque-shell-averaged` / `eq:ch1.J-em-vac-def`.
3. Action–reaction on \(S_i\): \(\hat{\mathbf{n}}_i\) outward from shell, \(\hat{\mathbf{n}}_{\mathrm{body}}=-\hat{\mathbf{n}}_i\).
4. Steady cycle average: \(\langle d\mathbf{J}_{\mathrm{em,vac}}/dt\rangle_T\to0\) → `eq:ch1.route-b-body-torque-steady`.

## Equation map (audit)

| Label | Route | Result |
|-------|-------|--------|
| `ch1.angular-balance-integral` | A | Volume identity on \(V_{\mathrm{A}}\) only |
| `ch1.torque-stress-route-a` | A | \(\mathbf{T}_{\mathrm{matter}}=\boldsymbol{\mathcal{T}}_J(V_{\mathrm{A}})-d\mathbf{J}_{\mathrm{em,A}}/dt\) |
| `ch1.route-b-torque-shell-averaged` | B | Shell storage + two stress moments |
| `ch1.route-b-body-torque-steady` | B | Steady reduction |
| `ch1.stress-moment-integral` | both | Vacuum \(V\) only |
| `ch1.am-flux-source-ledger` / `load-ledger` | — | Sign ledger |

**Dossier status:** Route B storage domain **CLOSED** in main text (batch E).
