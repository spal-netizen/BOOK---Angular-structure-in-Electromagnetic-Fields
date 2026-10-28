# Stage 3Z-AK — Negative controls

| Control | Engine | Result |
|---|---|---|
| Complex \((N\times M^*)=-(M\times N^*)\) | A | `complex_sum` ≈ 1.75 (detected) |
| \(\Re(MN+NM)=0\) | A | `Re_sum` = 0 |
| Incoming Hankel | B | `incoming_P` < 0 |
| Omit \(\H^*\) conjugation | B | `noconj_rel` ≈ 1 |
| Flip \(\mathbf N\) definition | B | `flip_n_rel` = 2 |

Logs: `logs/ENGINE_A.log`, `logs/ENGINE_B.log`.
