# Chu \(Q\) exactness correction

## Retained

- Impedance \(\mathcal Z_n=j\,[ph^{(2)}]'/(ph^{(2)})\).
- Fig. 3 vs Eq. (9) distinction; modal \(Q_1=2\omega W/P\).

## Corrected

`eq:ch1.chu-q-lower-bound` now documented as the **exact** ideal \(TM_{01}\) radiation \(Q\)
\[
Q_{\mathrm{LB}}=\frac{1}{(ka)^3}+\frac{1}{ka}
\]
(McLean field Eqs. 17, 19–20; ladder Eqs. 21–23), minimum-\(Q\) for the stated omnidirectional-sphere class under Chu §2.5 assumptions — **not** universal, not \(Q_{\mathrm{vol}}\).

Removed unsupported \(W_{\mathrm{st},1}\propto\cdots\) scaling sentence.

**Test:** `ch01_chu_q_exactness_check.py` PASS.
