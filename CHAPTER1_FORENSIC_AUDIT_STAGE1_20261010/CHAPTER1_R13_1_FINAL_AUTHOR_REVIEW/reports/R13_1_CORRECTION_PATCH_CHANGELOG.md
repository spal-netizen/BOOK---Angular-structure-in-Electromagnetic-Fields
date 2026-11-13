# R13.1 author-correction patch (baseline `a5927a2`)

## Corrected defects

| ID | Issue | Fix |
|----|-------|-----|
| 1 | Chu \(Z_n=j h_n'/h_n\) | Eq. `chu-Z-TM-normalized`: \(j\,[p h_n^{(2)}]'/(p h_n^{(2)})\) |
| 1b | False Chu \(e^{-j\omega t}\) conjugation | Removed; Chu \(e^{j\omega t}\), \(h_n^{(2)}\) aligned with chapter |
| 1c | \(Q_1=\|X\|/\|R\|\) without proof | Removed; Chu Eq. (12) \(2\omega W/P\) only |
| 2 | Faraday weak-form \(-\curl\psi\) | Curl self-adjoint pairing \(+\) sign; Ampère weak form matched |
| 3 | Lossless \(S_\Delta\) with complex \(\varepsilon\) | Lossless block labeled real \(\varepsilon,\mu\); lossy identity separate |
| 4 | Beth SI phasor | `eq:ch1.beth-torque-cycle-average` with \(\tfrac12\mathrm{Re}\{\mathbf P\times\mathbf E^*\}\) |
| 5 | Orphan eqrefs | Lorenz retarded refs replaced with inline forms |

## New acceptance tests

`ch01_chu_impedance_check.py`, `ch01_chu_impedance_numeric.py`, `ch01_dipole_weak_form_check.py`, `ch01_uniqueness_identity_check.py`, `ch01_beth_phasor_torque_check.py`

## Bibliography

Added `chu1948tr064` (MIT RLE TR-064), appended without renumbering journal `chu1948`.
