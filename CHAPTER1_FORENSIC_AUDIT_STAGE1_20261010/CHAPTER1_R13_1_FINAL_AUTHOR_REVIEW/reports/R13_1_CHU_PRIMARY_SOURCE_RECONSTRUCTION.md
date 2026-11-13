# Chu primary-source reconstruction (correction patch)

**Source:** MIT RLE TR-064 §2.4 Eq. (7)–(12), Fig. 3; JAP republication `chu1948`; `chu1948tr064` bib entry.

## Corrected impedance (Eq. `chu-Z-TM-normalized`)

\[
\mathcal{Z}_n(p)=\jj\,\frac{\dfrac{d}{dp}\bigl[p\,h_n^{(2)}(p)\bigr]}{p\,h_n^{(2)}(p)},\qquad p=ka.
\]

**Evidence:** TR-064 text Eq. (7) OCR: \(Z_n=j(\,h_n)'/(p\,h_n)\) with \(h_n\) the product derivative form; manuscript uses explicit \([ph]'/(ph)\).

**Numeric check:** `ch01_chu_impedance_numeric.py` — product form ≠ \(j h'/h\) for \(n=1\) at \(p\in\{0.3,1,3\}\).

## Time convention

Chu: \(e^{i\omega t}\), outgoing \(h_n^{(2)}\). **No** conjugation relative to chapter \(\exp(+j\omega t)\).

## Modal vs antenna \(Q\)

- **Modal \(Q_1\):** Chu Eq. (12), \(2\omega W_{\mathrm{st,1}}/P_{\mathrm{rad,1}}\) on Fig. 3 circuit only.
- **Antenna \(Q\):** §2.5–2.6 idealizations + sum — distinct.
- **Not** \(Q_{\mathrm{vol}}\), \(P_{\mathrm{reac}}(r)\).

## \(Q_{\mathrm{LB}}\)

Asymptotic expansion for ideal omnidirectional sphere, \(ka\ll1\), under §2.5 assumptions — not universal.

**Status:** **verified** (text); binary PDF **open**.
