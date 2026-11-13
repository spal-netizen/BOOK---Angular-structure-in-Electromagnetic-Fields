# Chu 1948 — n=1 TM primary-source reconstruction (R13.1)

**Primary (intended):** L. J. Chu, MIT RLE TR-064, 1 May 1948.  
**Republication:** *J. Appl. Phys.* **19**, 1163–1175 (1948), DOI [10.1063/1.1715038](https://doi.org/10.1063/1.1715038) — `chu1948` in bibliography.

**PDF status:** Local `chu_RLE_TR064*.pdf` and `chu_JAP_1948*.pdf` bytes are HTML/corrupt (1515 B). **TR-064 §2.4 text verified** via MIT DSpace HTML/bitstream text extract (Nov 2026); journal PDF not binary-authenticated in this environment.

## TR-064 §2.4 — transcribed structure

**Normalization:** $p=ka$. Terminal $V_n$, $I_n$ proportional to $E$, $H_\phi$ on $r=a$.

**Impedance (Chu Eq. 7, garbled OCR repaired):**
\[
\mathcal{Z}_n(p)=\jj\,\frac{h_n'(p)}{h_n(p)}
\]
(outward spherical Hankel factor in Chu's TM set).

**Continued fraction (Eq. 8):** ladder of series $C$ and shunt $L$, each $\propto a/c$, terminated in **unit resistance** = radiated power channel.

**$n=1$ (Fig. 3):** three elements only — shunt $C$, series $L$, series $R=1$ — electric-dipole wave; **not** the generic RLC fit of Eq. (9) used for simplified higher modes.

**Power / energy (Eqs. 10–11, specialized $n=1$):** $P_{\mathrm{rad,1}}$, $W_{\mathrm{st,1}}$ in terms of $|A_1|$ and $p$.

**Modal $Q$ (Eq. 12):** $Q_1=2\omega W_{\mathrm{st,1}}/P_{\mathrm{rad,1}}=|\mathcal{X}_1|/|\mathcal{R}_1|$ with $\mathcal{X}_1=\mathrm{Im}\,\mathcal{Z}_1$, $\mathcal{R}_1=\mathrm{Re}\,\mathcal{Z}_1$.

**Antenna-level $Q$ (§2.5–2.6):** interior idealizations + modal sum — **distinct** from single-mode $Q_1$.

## SI and $\exp(+\jj\omega t)$

Chu's report uses $e^{-\jj\omega t}$; this chapter uses $\exp(+\jj\omega t)$: $\mathcal{Z}_1\to\mathcal{Z}_1^*$, $Z_1=\eta_0\mathcal{Z}_1$. Reactance signs explicit in manuscript (`eq:ch1.chu-Z-TM-normalized`, `eq:ch1.chu-Qn-def`).

## Small-$ka$ and Eq. (1.144) family

Leading $W\propto a^3$, $P\propto (ka)^4$ $\Rightarrow$ $Q_1\sim (ka)^{-3}$; next term in $\mathcal{X}/\mathcal{R}$ gives $(ka)^{-1}$.  
`eq:ch1.chu-q-lower-bound` remains an **asymptotic quote** for Chu's ideal minimum-$Q$ model, not a re-derived identity from full antenna $Q$.

## Manuscript

New labels: `eq:ch1.chu-Z-TM-normalized`; expanded `eq:ch1.chu-Qn-def`. Removed “local PDF corrupted / schematic only” language; added honest MIT PDF byte limitation.

## Comparison with Eqs. (1.142)–(1.144)

| Quantity | R13.1 status |
|----------|----------------|
| $P_{\mathrm{reac}}(r)$ | Unchanged — shell exchange, not Chu $Q_1$ |
| $Q_{\mathrm{vol}}$ | Unchanged — field-energy ratio |
| $Q_1$ / $Q_{\mathrm{LB}}$ | $Q_1$ tied to Fig. 3; $Q_{\mathrm{LB}}$ asymptotic |

**Status:** **B** — manuscript reconstruction closed against TR-064 text + journal republication; binary PDF page-pin not completed.
