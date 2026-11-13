# R13.1 primary source authentication

**Pass:** R13.1 final evidence audit (2026-11-13)  
**Branch:** `chapter1/r13.1-final-closure`  
**Immutable author-verified snapshot:** git tag `chapter1-r13.1-release-ca5f1972` → PDF SHA-256 `CA5F1972D4C9832DF000D5B41B198494303D03D70FF48310F050694DB71E35B1` (61 pp, author upload confirmed)

## Sources inspected

| Source | Identifier | Access | Authentication level |
|--------|------------|--------|----------------------|
| Chu (JAP) | L. J. Chu, *J. Appl. Phys.* **19**, 1163–1175 (1948); bib `chu1948` | Publisher archive / author PDF | **Binary/text verified** for Eqs. (7)–(12), Fig. 3 narrative, §2.4–2.6 scope |
| Chu (MIT TR-064) | RLE TR-064, 1 May 1948; DSpace [1721.1/4984](https://dspace.mit.edu/handle/1721.1/4984) | HTML handle page **200**; bitstream download in this workspace returns non-PDF payloads | **Metadata + secondary text crosswalk only**; **not** binary page-pinned |
| McLean (1996) | IEEE TAP **44**(5), 672–676; DOI [10.1109/8.496253](https://doi.org/10.1109/8.496253) | IEEE Xplore / DOI resolver | **Verified** for ideal $TM_{01}$ field energy (Eqs. 17, 19–20) and ladder check (Eqs. 21–23) |
| Stratton (1941) | *Electromagnetic Theory* | Monograph | VSW curl identities and exterior radiation convention (**secondary classical check**) |
| Harrington (2001) | *Time-Harmonic EM Fields* | Monograph | Uniqueness, VSW usage (**secondary classical check**) |
| Beth (1936) | PR **50**, 115 | Journal | Torque cycle average (**SI peak-phasor conversion verified** in MS) |
| Sommerfeld / Rellich literature | As cited in §1.1.3 | Text citations | **Theorem cited, not reproduced**; hypotheses stated in chapter |

## Chu normalized impedance $\mathcal{Z}_n(p)$

**Chapter form** (Eq. `eq:ch1.chu-Z-TM-normalized`):

$$\mathcal{Z}_n(p)=j\,\frac{\dfrac{d}{dp}\bigl[p\,h_n^{(2)}(p)\bigr]}{p\,h_n^{(2)}(p)},\qquad p=ka.$$

- Outgoing branch $h_n^{(2)}$ under $e^{+j\omega t}$: **consistent** with Chu JAP time factor and this book's phasor policy.
- Factor $p$ inside the derivative: **essential**; reduced form $j h_n'/h_n$ is **not** Chu’s definition (numeric check `ch01_chu_impedance_numeric.py`).

**Claims retained in text (JAP + McLean cross-check):**

- Continued-fraction ladder (Chu Eq. 8) and $n=1$ three-element exact circuit vs $n\ge2$ RLC surrogate (Chu Eq. 9).
- Modal $Q_1=2\omega W_{\mathrm{st,1}}/P_{\mathrm{rad,1}}$ (Chu Eq. 12).

**Claims that depend primarily on TR-064 detail:**

- Fine-grained wording of MIT report section numbering when it **diverges** from JAP pagination.
- Any statement that would require **verbatim** TR-064 equation images if JAP and TR-064 disagree (none identified in this pass).

**Action:** Chapter prose no longer states workspace-specific “binary authentication” status; audit limitation is recorded **here only**.

## McLean $TM_{01}$ exact $Q$

Field-based (McLean normalization):

$$W_e'=\frac{4\pi\eta}{3\omega}\left[\frac{1}{(ka)^3}+\frac{1}{ka}\right],\quad P_{\mathrm{rad}}=\frac{8\pi}{3}\eta,\quad Q_{TM_{01}}=\frac{2\omega W_e'}{P_{\mathrm{rad}}}=\frac{1}{(ka)^3}+\frac{1}{ka}.$$

**Chapter:** Eq. `eq:ch1.chu-q-lower-bound` with explicit **ideal $TM_{01}$ / stated antenna-class benchmark** scope—not $Q_{\mathrm{vol}}$, not arbitrary-antenna identity.

**Independent checks:** `ch01_chu_q_exactness_check.py`, ladder consistency via McLean Eqs. (21)–(23) as cited.

## Limitation (major qualification)

**MIT TR-064 binary PDF** was not authenticated byte-for-byte in this environment. Chu circuit reconstruction in the chapter rests on **JAP 1948**, **McLean 1996**, and **Stratton/Harrington** VSW conventions. Upgrade to full TR-064 binary pin requires an author-held PDF or a verified DSpace bitstream export.
