#!/usr/bin/env python3
"""Replace \\fbox{...} figure bodies with TikZ for listed ch01 labels (lines ~101-4750)."""
from __future__ import annotations

import re
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
CH01 = ROOT / "latex" / "ch01.tex"

# TikZ bodies: \\begin{tikzpicture}[ch1fig] ... \\end{tikzpicture}
TIKZ: dict[str, str] = {
    "fig:ch1.scope-control-gate": r"""
\begin{tikzpicture}[ch1fig, scale=0.88]
  \node[ch1box] (in) {Input\\$(\Omega,\Gamma,\chi,\Jimp,\omega)$};
  \node[ch1box, below=8mm of in] (lm) {Layer 1\\$\mathcal{L}_M$};
  \node[ch1box, below=8mm of lm] (tc) {Layer 2\\$\mathcal{T}_C$};
  \node[ch1box, below=8mm of tc] (oa) {Layer 3\\$\mathcal{O}_A$};
  \node[ch1box, below=8mm of oa] (out) {Output\\$\mathcal{A}_{\mathrm{ch1}}[\Xi]=1$};
  \draw[ch1flow] (in) -- (lm) -- (tc) -- (oa) -- (out);
\end{tikzpicture}""",
    "fig:ch1.wp-matched-aperture": r"""
\begin{tikzpicture}[ch1fig, scale=0.85]
  \draw[ch1shell] (0,0) ellipse (0.55 and 0.18);
  \node[ch1lblout, above=3mm of {(0,0.18)}] {$a=5\,\mathrm{mm}$};
  \node[ch1box, left=14mm of {(0,0)}] (s1) {Sim.~I\\$\Jimp\in L^2$\\$\Xi\in\mathcal{L}_M$};
  \node[ch1box, right=14mm of {(0,0)}] (s2) {Sim.~II\\Dirichlet $\E_t$\\$\Xi\notin\mathcal{L}_M$};
  \draw[ch1flow] (s1.east) -- (-0.55,0);
  \draw[ch1flow] (s2.west) -- (0.55,0);
  \node[ch1lblout, below=5mm of {(0,-0.22)}] {$\int_{\partial V}\mathbf{M}\!\cdot\!\hat{\mathbf{n}}\,dS$};
\end{tikzpicture}""",
    "fig:ch1.wp-dielectric-wedge": r"""
\begin{tikzpicture}[ch1fig, scale=0.85]
  \draw[ch1axis] (-2.2,0) -- (2.2,0);
  \draw[ch1axis] (0,-0.3) -- (0,1.8);
  \fill[blue!15] (0,0) -- (1.6,0) arc (0:45:1.6) -- cycle;
  \node[ch1lblout] at (1.1,0.45) {$\varepsilon_r=4$};
  \node[ch1lblout, above left] at (-0.1,1.5) {vacuum};
  \draw[ch1src] (0,0.9) circle (2pt);
  \node[ch1lblout, left=4pt] at (0,0.9) {$\Jimp\parallel\hat{\mathbf{z}}$};
  \node[ch1lblout, below=3mm of {(1.6,0)}] {$\kappa_{\mathrm{rot}}\!\approx\!0.4$--$0.6$};
\end{tikzpicture}""",
    "fig:ch1.wp-gaussian-waist": r"""
\begin{tikzpicture}[ch1fig, scale=0.85]
  \draw[ch1axis] (-2,0) -- (2,0) node[right] {$x$};
  \draw[thick, blue!70!black] plot[domain=-2:2,samples=60] (\x,{0.9*exp(-\x*\x/0.8)});
  \node[ch1lblout, above] at (0,1.05) {$\exp(-r^2/w_0^2)$};
  \draw[dashed, gray] (-1.6,-0.5) rectangle (1.6,1.2);
  \node[ch1lblout, below left] at (-1.6,-0.5) {$[-10w_0,10w_0]^3$};
  \draw[dashed, red!60!black] (-0.5,-0.5) rectangle (0.5,1.2);
  \node[ch1lblout, below right] at (0.5,-0.5) {$[-w_0,w_0]^3$};
  \draw[ch1shell] (0,-0.15) circle (1.35);
  \node[ch1lblout, right=2mm] at (1.35,-0.15) {$S$: $\boldsymbol{\Psi}_J$};
\end{tikzpicture}""",
    "fig:ch1.vacuum-closure-map": r"""
\begin{tikzpicture}[ch1fig, scale=0.88]
  \node[ch1box] (eh) {$(\E,\H)$};
  \node[ch1box, right=12mm of eh] (db) {$(\mathbf{D},\mathbf{B})$};
  \node[ch1box, below=10mm of db] (sc) {$c,\ \eta_0,\ k_0$};
  \draw[ch1flow] (eh) -- node[above, ch1lblout] {$\varepsilon_0,\mu_0$} (db);
  \draw[ch1flow] (db) -- (sc);
\end{tikzpicture}""",
    "fig:ch1.wp-uniform-planewave": r"""
\begin{tikzpicture}[ch1fig, scale=0.85]
  \draw[ch1axis] (0,0) -- (0,2.2) node[above] {$\hat{\mathbf{z}}$};
  \draw[->, thick, red!70!black] (0,1) -- (0.9,1) node[above, ch1lblout] {$\E$};
  \draw[->, thick, blue!70!black] (0,1) -- (0,1.9) node[left, ch1lblout] {$\H$};
  \draw[->, thick, teal!70!black] (0,0.3) -- (0,1.5) node[right=2mm, ch1lblout] {$\mathbf{S}$};
  \node[ch1lblout, below left] at (0,0) {$\Jimp=\mathbf{0}$};
\end{tikzpicture}""",
    "fig:ch1.wp-solenoidal-loop": r"""
\begin{tikzpicture}[ch1fig, scale=0.85]
  \draw[ch1shell, thick] (0,0) circle (0.75);
  \draw[->, thick, orange!85!black] (0.75,0) arc (0:300:0.75);
  \node[ch1lblout, right] at (0.85,0.2) {$I_0\hat{\boldsymbol{\phi}}$};
  \node[ch1lblout, below] at (0,-0.95) {$b=3\,\mathrm{cm}$};
  \draw[ch1shellB, dashed] (0,0) circle (1.35);
  \node[ch1lblout, right] at (1.35,0) {$kr=6.3$};
  \draw[ch1shellO, dotted] (0,0) circle (0.45);
  \node[ch1lblout, right] at (0.45,0) {$kr=0.63$};
\end{tikzpicture}""",
    "fig:ch1.source-boundary-admissibility": r"""
\begin{tikzpicture}[ch1fig, scale=0.85]
  \draw[thick] (-1.8,-1) rectangle (1.8,1);
  \fill[gray!8] (-0.9,-0.5) rectangle (0.2,0.6);
  \fill[gray!15] (0.3,-0.7) rectangle (1.5,0.8);
  \node[ch1lblout] at (-0.35,0.05) {$\Omega_a$};
  \node[ch1lblout] at (0.9,0.05) {$\Omega_b$};
  \draw[ch1shell] (0.2,-0.5) -- (0.3,-0.7);
  \node[ch1lblout, above] at (0.25,-0.35) {$\Sigma_{ab}$};
  \fill[black!70] (-1.2,-0.3) rectangle (-1.8,0.3);
  \node[ch1lblout, left] at (-1.8,0) {$\Gamma_{\mathrm{PEC}}$};
  \fill[red!60] (0,-0.15) circle (2.5pt);
  \node[ch1lblout, below] at (0,-0.35) {$\Omega_s$};
\end{tikzpicture}""",
    "fig:ch1.wp-dipole-charge-continuity": r"""
\begin{tikzpicture}[ch1fig, scale=0.88]
  \node[ch1box, text width=28mm] (ok) {Admissible\\$\Jimp=J_0\delta(\mathbf{r})\hat{\mathbf{z}}$\\$\rho=0$};
  \node[ch1box, below=10mm of ok, text width=28mm] (bad) {Inadmissible\\$+\rho_0\delta(\mathbf{r})$};
  \draw[ch1src] (0,1.1) circle (2pt);
  \node[ch1lblout, above=3mm] at (0,1.1) {origin};
  \draw[ch1flow] (ok) -- (bad);
  \node[ch1lblout, right=8mm] at (bad.east) {$\mathcal{R}_{\mathrm{adm}}\sim 1$};
\end{tikzpicture}""",
    "fig:ch1.wp-te10-waveguide": r"""
\begin{tikzpicture}[ch1fig, scale=0.85]
  \draw[thick] (-1.2,-0.7) rectangle (1.2,0.7);
  \draw[blue!60, thick] plot[domain=-1.1:1.1,samples=40] (-1.1+2.2*\x/2.2,{0.55*sin(180*\x/2.2)});
  \node[ch1lblout, above] at (0,0.75) {TE$_{10}$};
  \draw[ch1flow, ->] (-1.5,0) -- (-1.2,0);
  \node[ch1lblout, left] at (-1.5,0) {$\Jimp$ feed};
  \node[ch1lblout, below] at (0,-0.85) {$a\times b$, PEC};
\end{tikzpicture}""",
    "fig:ch1.wp-dielectric-halfspace": r"""
\begin{tikzpicture}[ch1fig, scale=0.85]
  \fill[blue!12] (-2,-1.2) rectangle (2,0);
  \fill[gray!6] (-2,0) rectangle (2,1.2);
  \draw[thick] (-2,0) -- (2,0);
  \node[ch1lblout, below left] at (-1.5,-0.5) {$\Omega_2$, $\varepsilon_r{=}2.25$};
  \node[ch1lblout, above left] at (-1.5,0.5) {$\Omega_1$ vacuum};
  \draw[->, thick, red!70!black] (0,0.5) -- (0,1.1);
  \node[ch1lblout, right] at (0.15,0.8) {$\E,\ \Gamma,\ \tau$};
\end{tikzpicture}""",
    "fig:ch1.uniqueness-map": r"""
\begin{tikzpicture}[ch1fig, scale=0.88]
  \node[ch1box] (ibvp) {IBVP data\\$(\E_0,\H_0)$, $\chi$, $\mathcal{B}_\Gamma$};
  \node[ch1box, right=14mm of ibvp] (sol) {Solutions $\mathcal{F}_1,\mathcal{F}_2$};
  \node[ch1box, below=10mm of sol] (diff) {$\Delta\E,\Delta\H$ homogeneous};
  \node[ch1box, below=10mm of diff] (zero) {$\Delta\E=\mathbf{0}$};
  \draw[ch1flow] (ibvp) -- (sol) -- (diff) -- (zero);
\end{tikzpicture}""",
    "fig:ch1.wp-pec-cavity-uniqueness": r"""
\begin{tikzpicture}[ch1fig, scale=0.85]
  \draw[thick] (-1.3,-0.8) rectangle (1.3,0.8);
  \draw[blue!50, dashed] (-1.1,-0.6) -- (1.1,0.6);
  \draw[blue!50, dashed] (-1.1,0.6) -- (1.1,-0.6);
  \node[ch1lblout, below] at (0,-0.95) {PEC $(m,n,p)$};
  \node[ch1lblout, above right] at (0.9,0.5) {$\Delta\E\to\mathbf{0}$};
\end{tikzpicture}""",
    "fig:ch1.wp-pec-identical-power": r"""
\begin{tikzpicture}[ch1fig, scale=0.85]
  \node[ch1box] (f1) {$\E^{(1)}$};
  \node[ch1box, right=16mm of f1] (f2) {$\E^{(2)}$};
  \node[ch1box, below=10mm of f1] (p) {equal aperture power};
  \draw[ch1flow] (f1) -- (p);
  \draw[ch1flow] (f2) -- (p);
  \node[ch1lblout, below=8mm of p] {$\Delta\E=\E^{(1)}-\E^{(2)}\to\mathbf{0}$};
\end{tikzpicture}""",
    "fig:ch1.wp-weakly-damped-cavity": r"""
\begin{tikzpicture}[ch1fig, scale=0.85]
  \draw[thick] (-1.2,-0.7) rectangle (1.2,0.7);
  \draw[red!70!black, thick] (0.9,0) -- (1.2,0.25) -- (1.2,-0.25) -- cycle;
  \node[ch1lblout, right] at (1.35,0) {leak $A$};
  \node[ch1lblout, above] at (0,0.85) {$f\approx f_{110}$};
  \node[ch1lblout, below] at (0,-0.95) {$\nu_{\mathrm{res}}\approx 0.03$};
\end{tikzpicture}""",
    "fig:ch1.energy-momentum-control": r"""
\begin{tikzpicture}[ch1fig, scale=0.88]
  \draw[thick] (-1.5,-1) rectangle (1.5,1);
  \node[ch1lblout, above] at (0,1.05) {$\partial V$};
  \draw[->, teal!70!black, thick] (0,0.3) -- (0,1) node[right, ch1lblout] {$\mathbf{S}$};
  \draw[->, orange!85!black, thick] (-0.8,0) -- (-1.3,0) node[above, ch1lblout] {$\mathbf{T}\!\cdot\!\hat{\mathbf{n}}$};
  \fill[red!50] (0,0) circle (2pt);
  \node[ch1lblout, below] at (0,-0.2) {$\Jimp$ work};
\end{tikzpicture}""",
    "fig:ch1.wp-transverse-vs-closed": r"""
\begin{tikzpicture}[ch1fig, scale=0.85]
  \draw[ch1axis] (0,0) -- (0,2);
  \draw[fill=gray!10] (0,0) circle (0.55);
  \node[ch1lblout, right] at (0.6,0) {disk: $\mathbf{t}=\mathbf{0}$};
  \draw[ch1shell, dashed] (0,0) arc (180:0:1.2);
  \node[ch1lblout, above] at (0,1.25) {cap: $\mathbf{P}_{\mathrm{em}}/c^2$};
  \draw[->, thick] (0,0.2) -- (0,1.5) node[right, ch1lblout] {$\mathbf{S}\parallel\hat{\mathbf{z}}$};
\end{tikzpicture}""",
    "fig:ch1.wp-reactive-vs-radiative": r"""
\begin{tikzpicture}[ch1fig, scale=0.85]
  \draw[ch1src] (0,0) circle (2pt);
  \draw[ch1shellO, dotted] (0,0) circle (0.5);
  \node[ch1lblout, right] at (0.5,0) {$kr{=}0.5$};
  \draw[ch1shell] (0,0) circle (1.0);
  \node[ch1lblout, right] at (1.0,0.15) {$kr{=}3$};
  \draw[ch1shellB] (0,0) circle (1.55);
  \node[ch1lblout, right] at (1.55,0.2) {$kr{=}10$};
  \node[ch1lblout, below] at (0,-1.75) {$|Q_{\mathrm{re}}|\gg P_{\mathrm{rad}}$ inner};
\end{tikzpicture}""",
    "fig:ch1.torque-balance-control": r"""
\begin{tikzpicture}[ch1fig, scale=0.88]
  \draw[thick] (-1.4,-1) rectangle (1.4,1);
  \fill (0,0) circle (1.5pt);
  \node[ch1lblout, below left] at (0,0) {$\mathbf{r}_0$};
  \draw[->, teal!70!black, thick] (1.0,0.3) arc (10:80:1.0);
  \node[ch1lblout, right] at (1.15,0.55) {$\mathbf{M}\!\cdot\!\hat{\mathbf{n}}$};
  \draw[->, orange!85!black, thick] (-0.5,-0.2) arc (200:320:0.45);
  \node[ch1lblout, left] at (-0.65,-0.35) {$\boldsymbol{\tau}_{\mathrm{mech}}$};
\end{tikzpicture}""",
    "fig:ch1.wp-torque-balance-surface": r"""
\begin{tikzpicture}[ch1fig, scale=0.85]
  \draw[ch1shell] (0,0) circle (1.2);
  \node[ch1lblout, right] at (1.2,0) {$S_R$};
  \draw[ch1axis] (0,-0.2) -- (0,1.6) node[above] {$\hat{\mathbf{z}}$};
  \draw[->, thick, gray] (0.85,0) -- (1.15,0) node[above, ch1lblout] {$\hat{\mathbf{n}}$};
  \node[ch1lblout, below] at (0,-1.45) {$m{=}0$ vs.\ $m{\neq}0$};
\end{tikzpicture}""",
    "fig:ch1.wp-radiating-shell": r"""
\begin{tikzpicture}[ch1fig, scale=0.85]
  \draw[ch1shell] (0,0.5) circle (1.1);
  \draw[->, thick, teal!70!black] (0.7,0.5) -- (1.15,0.5);
  \node[ch1lblout, above] at (0,1.75) {$\E,\H\propto e^{-\jj k_0 r}/r$};
  \node[ch1lblout, below] at (0,-0.75) {$\tau_z^{\mathrm{mech}}=0$};
\end{tikzpicture}""",
    "fig:ch1.wp-helical-shell-torque": r"""
\begin{tikzpicture}[ch1fig, scale=0.85]
  \draw[ch1shell] (0,0.5) circle (1.1);
  \draw[->, thick, orange!85!black] (0.55,0.5) arc (0:-250:0.5);
  \node[ch1lblout, right] at (0.9,0.15) {$m{=}1,\ \sigma{=}{+}1$};
  \node[ch1lblout, below] at (0,-0.75) {$\tau_z\propto -(m{+}\sigma)P_{\mathrm{rad}}/\omega$};
\end{tikzpicture}""",
    "fig:ch1.wp-helical-origin-shift": r"""
\begin{tikzpicture}[ch1fig, scale=0.85]
  \draw[ch1axis] (0,-0.2) -- (0,1.8) node[above] {$\hat{\mathbf{z}}$};
  \fill (0,0.6) circle (1.5pt) node[left, ch1lblout] {$O$};
  \fill (0.5,0.6) circle (1.5pt) node[right, ch1lblout] {$O'$};
  \draw[->, dashed, gray] (0,0.6) -- (0.5,0.6) node[midway, above, ch1lblout] {$\mathbf{d}$};
  \draw[ch1shell] (0,0.6) circle (0.9);
\end{tikzpicture}""",
    "fig:ch1.directional-transport-decomposition": r"""
\begin{tikzpicture}[ch1fig, scale=0.85]
  \draw[ch1shell] (0,0) circle (1.15);
  \foreach \a in {30,150,270} {
    \draw[->, thick, teal!60] (0,0) -- (\a:0.85);
  }
  \node[ch1lblout, above] at (0,1.35) {$\Pi,\ \boldsymbol{\Psi}_J$};
  \node[ch1box, below=12mm of {(0,0)}] (q) {$\mathcal{Q}_{J,\Omega}=1$};
\end{tikzpicture}""",
    "fig:ch1.wp-equal-power-torque": r"""
\begin{tikzpicture}[ch1fig, scale=0.85]
  \node[ch1box] (a) {State A\\$\Delta\Omega_+$ only};
  \node[ch1box, right=14mm of a] (b) {State B\\$+\!$ and $\Delta\Omega_-$};
  \node[ch1lblout, below=8mm of a] {$\mathbf{J}_{\mathrm{rad}}=\mathbf{J}_+\hat{\mathbf{z}}$};
  \node[ch1lblout, below=8mm of b] {$\mathbf{J}_{\mathrm{rad}}=\mathbf{0}$};
  \node[ch1lblout, above=6mm of a] {$P_0$};
  \node[ch1lblout, above=6mm of b] {$P_0$};
\end{tikzpicture}""",
    "fig:ch1.wp-cardiod-asymmetric-flux": r"""
\begin{tikzpicture}[ch1fig, scale=0.85]
  \draw[thick, domain=0:180, samples=50, smooth]
    plot ({0.35+0.25*cos(\x)},{0.35+0.25*sin(\x)});
  \fill[red!15] (45:0.5) arc (45:90:0.5) -- (0,0) -- cycle;
  \node[ch1lblout] at (0.35,0.35) {C};
  \node[ch1lblout] at (0.55,0.15) {D};
  \node[ch1lblout, below] at (0.5,-0.1) {same $\Pi$, different $\boldsymbol{\Psi}_J$};
\end{tikzpicture}""",
    "fig:ch1.phase-polarization-topology-map": r"""
\begin{tikzpicture}[ch1fig, scale=0.88]
  \node[ch1box] (ap) {$(A_\theta,A_\phi,\Delta\varphi)$};
  \node[ch1box, right=10mm of ap] (st) {Stokes $(\psi,\chi)$};
  \node[ch1box, right=10mm of st] (fl) {$(\mathbf{P},\boldsymbol{\Omega}_P)$};
  \node[ch1box, below=10mm of st] (qt) {$\mathcal{Q}_{\mathrm{top}}=1$};
  \draw[ch1flow] (ap) -- (st) -- (fl);
  \draw[ch1flow] (st) -- (qt);
\end{tikzpicture}""",
    "fig:ch1.wp-phase-ramp-linear": r"""
\begin{tikzpicture}[ch1fig, scale=0.85]
  \draw[ch1axis] (-1.8,0) -- (1.8,0) node[right] {$y$};
  \draw[->, thick, blue!70!black] plot[domain=-1.5:1.5,samples=30] (\x,{0.35*sin(deg(50*\x))});
  \node[ch1lblout, above] at (0,0.45) {$\mathbf{P}$ transverse};
  \draw[ch1shell, dashed] (0,0) circle (1.1);
  \node[ch1lblout, right] at (1.1,0) {$\mathcal{D}_J=0$};
\end{tikzpicture}""",
    "fig:ch1.wp-annular-lg01": r"""
\begin{tikzpicture}[ch1fig, scale=0.85]
  \draw[ch1shell, thick] (0,0) circle (0.55);
  \draw[ch1shell, thick] (0,0) circle (0.85);
  \fill[gray!8] (0,0) circle (0.55);
  \node[ch1lblout, above] at (0,0.95) {annulus $8$--$12\,\mathrm{mm}$};
  \node[ch1lblout, below] at (0,-1.0) {$m=+1$, ring beam};
\end{tikzpicture}""",
    "fig:ch1.transport-triad-map": r"""
\begin{tikzpicture}[ch1fig, scale=0.88]
  \node[ch1box] (in) {$\Pi,\ \boldsymbol{\Psi}_J$};
  \node[ch1box, below left=10mm and 8mm of in] (c1) {$\mathcal{C}_1$};
  \node[ch1box, below=10mm of in] (c2) {$\mathcal{C}_2$};
  \node[ch1box, below right=10mm and 8mm of in] (c3) {$\mathcal{C}_3$};
  \node[ch1box, below=12mm of c2] (dj) {$\mathcal{D}_J=1$};
  \draw[ch1flow] (in) -- (c1);
  \draw[ch1flow] (in) -- (c2);
  \draw[ch1flow] (in) -- (c3);
  \draw[ch1flow] (c1) -- (dj);
  \draw[ch1flow] (c2) -- (dj);
  \draw[ch1flow] (c3) -- (dj);
\end{tikzpicture}""",
    "fig:ch1.wp-triad-isotropic-vortex": r"""
\begin{tikzpicture}[ch1fig, scale=0.85]
  \node[ch1box] (c1) {Case 1\\isotropic $\Pi$};
  \node[ch1box, below=8mm of c1] (c2) {Case 2\\balanced vortex};
  \node[ch1box, below=8mm of c2] (c3) {Case 3\\$I_+-I_-\neq 0$};
  \node[ch1lblout, right=10mm of c3] {$\mathcal{D}_J=1$};
  \draw[ch1flow] (c1) -- (c2) -- (c3);
\end{tikzpicture}""",
    "fig:ch1.wp-crossed-dipoles-triad": r"""
\begin{tikzpicture}[ch1fig, scale=0.85]
  \draw[->, thick, red!70!black] (0,0) -- (0,0.9) node[left, ch1lblout] {single};
  \draw[->, thick, red!70!black] (-0.35,0) -- (0.35,0.9);
  \draw[->, thick, blue!70!black] (0.35,0) -- (-0.35,0.9);
  \node[ch1lblout, right] at (0.5,0.45) {crossed};
  \node[ch1lblout, below] at (0,-0.25) {same $P_{\mathrm{rad}}$, different $\Lambda_J$};
\end{tikzpicture}""",
    "fig:ch1.reactive-radiative-map": r"""
\begin{tikzpicture}[ch1fig, scale=0.88]
  \draw[ch1flow, ->] (-2,0) -- (2,0) node[right] {$r$};
  \node[ch1box] at (-1.2,0.55) {$\Pi_{\mathrm{re}}$};
  \node[ch1box] at (1.2,0.55) {$\Pi_{\mathrm{a}}$};
  \node[ch1box, below=8mm of {(0,0)}] (chi) {$\chi(r),\ \mathcal{D}_{J,\mathrm{reg}}$};
  \draw[ch1flow] (-1.2,0.35) -- (chi);
  \draw[ch1flow] (1.2,0.35) -- (chi);
\end{tikzpicture}""",
    "fig:ch1.wp-small-dipole-ka05": r"""
\begin{tikzpicture}[ch1fig, scale=0.85]
  \draw[ch1src] (0,0) circle (2pt);
  \draw[ch1shellO, dotted] (0,0) circle (0.45);
  \node[ch1lblout, right] at (0.45,0) {$kr{=}0.5$, $\chi\approx 9$};
  \draw[ch1shellB] (0,0) circle (1.1);
  \node[ch1lblout, right] at (1.1,0.1) {$kr{=}3$, $\chi\approx 0.2$};
  \node[ch1lblout, below] at (0,-1.35) {$ka=0.5$, $Q_{\mathrm{LB}}$};
\end{tikzpicture}""",
    "fig:ch1.active-passive-rotation": r"""
\begin{tikzpicture}[ch1fig, scale=0.88]
  \node[ch1box] (a) {State A: $\E$};
  \node[ch1box, above right=10mm and 12mm of a] (b) {$\mathcal{A}_R\E$};
  \node[ch1box, below right=10mm and 12mm of a] (c) {$\mathcal{P}_R\E$};
  \draw[ch1flow] (a) -- node[above, ch1lblout] {active $R$} (b);
  \draw[ch1flow] (a) -- node[below, ch1lblout] {passive $R^{-1}$} (c);
\end{tikzpicture}""",
    "fig:ch1.wp-active-passive-rotation": r"""
\begin{tikzpicture}[ch1fig, scale=0.85]
  \draw[->, thick, red!70!black] (0,0) -- (0,1) node[left, ch1lblout] {$\mathbf{p}\parallel\hat{\mathbf{z}}$};
  \draw[->, thick, blue!70!black] (0,0) -- (1,0) node[below, ch1lblout] {$\mathcal{A}_{R_z(\pi/2)}$};
  \draw[ch1shell, dashed] (0,0) circle (0.75);
  \node[ch1lblout, right] at (0.75,0) {$P$ on $S_r$ fixed};
\end{tikzpicture}""",
    "fig:ch1.tensor-dyadic-covariance": r"""
\begin{tikzpicture}[ch1fig, scale=0.88]
  \node[ch1box] (v) {$\mathbf{v}\mapsto R\mathbf{v}$};
  \node[ch1box, below=8mm of v] (t) {$\mathbf{T}\mapsto R\mathbf{T}R^\top$};
  \node[ch1box, below=8mm of t] (d) {$\mathbf{D}\mapsto R\mathbf{D}R^\top$};
  \node[ch1box, below=8mm of d] (tr) {$\mathbf{t}=\mathbf{T}\hat{\mathbf{n}}$};
  \draw[ch1flow] (v) -- (t) -- (d) -- (tr);
\end{tikzpicture}""",
    "fig:ch1.wp-stress-rx-dipole": r"""
\begin{tikzpicture}[ch1fig, scale=0.85]
  \draw[ch1axis] (0,0) -- (1.5,0);
  \draw[ch1axis] (0,0) -- (0,1.5);
  \fill (0.9,0) circle (1.5pt);
  \node[ch1lblout, above] at (0.9,0.05) {$\theta=\pi/2$};
  \draw[->, thick, gray] (0.9,0) -- (1.25,0) node[above, ch1lblout] {$\hat{\mathbf{r}}$};
  \node[ch1lblout, below] at (0.45,-0.2) {$\mathbf{T}'=R_x(\pi/2)\mathbf{T}R_x^\top$};
\end{tikzpicture}""",
    "fig:ch1.wp-rank-one-dyad": r"""
\begin{tikzpicture}[ch1fig, scale=0.85]
  \draw[ch1axis] (0,0) -- (1.6,0) node[below] {$x$};
  \draw[ch1axis] (0,0) -- (0,1.6) node[left] {$y$};
  \draw[->, thick, red!70!black] (0.2,0) -- (0.2,0.9) node[right, ch1lblout] {$\mathbf{a}$};
  \draw[->, thick, blue!70!black] (0,0.2) -- (0.9,0.2) node[above, ch1lblout] {$\mathbf{b}$};
  \node[ch1lblout] at (0.75,0.55) {$\mathbf{D}=\mathbf{a}\mathbf{b}^\top$};
\end{tikzpicture}""",
    "fig:ch1.wp-two-dipole-dual-origin": r"""
\begin{tikzpicture}[ch1fig, scale=0.85]
  \draw[->, thick, red!70!black] (-0.6,0) -- (-0.6,0.7);
  \draw[->, thick, red!70!black] (0.6,0) -- (0.6,-0.7);
  \fill (0,0) circle (1.5pt) node[below, ch1lblout] {$O$};
  \fill (0,0.5) circle (1.5pt) node[right, ch1lblout] {$O'$};
  \draw[dashed, gray] (0,0) -- (0,0.5);
  \node[ch1lblout, below] at (0,-0.35) {$\mathbf{p}_\pm=\pm p_0\hat{\mathbf{z}}$};
\end{tikzpicture}""",
    "fig:ch1.origin-shift-map": r"""
\begin{tikzpicture}[ch1fig, scale=0.88]
  \node[ch1box] (a) {Report A: $(\mathbf{J}_O,\mathbf{M}_O)$};
  \node[ch1box, below=10mm of a] (b) {Report B: $(\mathbf{J}_{O'},\mathbf{M}_{O'})$};
  \node[ch1box, right=14mm of a] (aff) {$-\mathbf{a}\times\mathbf{P}_{\mathrm{tot}}$};
  \draw[ch1flow] (a) -- (aff);
  \draw[ch1flow] (b) -- (aff);
\end{tikzpicture}""",
    "fig:ch1.wp-finite-dipole-origin": r"""
\begin{tikzpicture}[ch1fig, scale=0.85]
  \draw[->, thick, red!70!black] (0,0) -- (0,0.95) node[left, ch1lblout] {$\mathbf{p}\parallel\hat{\mathbf{z}}$};
  \fill (0,0) circle (1.5pt) node[below left, ch1lblout] {$O$};
  \fill (0.55,0) circle (1.5pt) node[below, ch1lblout] {$O'$};
  \draw[dashed, gray, ->] (0,0) -- (0.55,0) node[midway, below, ch1lblout] {$\mathbf{a}$};
\end{tikzpicture}""",
    "fig:ch1.wp-planewave-invariants": r"""
\begin{tikzpicture}[ch1fig, scale=0.85]
  \draw[ch1axis] (0,0) -- (0,1.8) node[above] {$\hat{\mathbf{z}}$};
  \draw[->, thick, red!70!black] (-0.3,0.8) -- (0.3,0.8);
  \node[ch1lblout, right] at (0.35,0.8) {$\mathbf{T}$};
  \node[ch1lblout, below] at (0,-0.15) {$I_1,I_2,I_3$ invariant};
\end{tikzpicture}""",
    "fig:ch1.wp-coherency-invariants": r"""
\begin{tikzpicture}[ch1fig, scale=0.85]
  \draw[thick] (0,0) circle (0.75);
  \node[ch1lblout] at (0,0) {$S_0$};
  \draw[->, thick, blue!70!black] (0,0) -- (0.55,0.35);
  \node[ch1lblout, right] at (0.6,0.35) {$(S_1,S_2,S_3)$};
  \node[ch1lblout, below] at (0,-0.95) {$\mathrm{tr}\boldsymbol{\Gamma}$, $\det\boldsymbol{\Gamma}$ fixed};
\end{tikzpicture}""",
    "fig:ch1.wp-stress-objectivity-dipole": r"""
\begin{tikzpicture}[ch1fig, scale=0.85]
  \draw[ch1axis] (0,0) -- (1.4,0);
  \draw[ch1axis] (0,0) -- (0,1.4);
  \fill (1.0,0.35) circle (1.5pt);
  \node[ch1lblout, above right] at (1.0,0.35) {far zone};
  \draw[->, thick, gray] (0,0) arc (0:90:0.55) node[midway, right, ch1lblout] {$R_y(\pi/2)$};
  \node[ch1lblout, below] at (0.5,-0.15) {$\Delta_{\mathbf{T}}=0$};
\end{tikzpicture}""",
}


def find_matching_brace(s: str, open_pos: int) -> int:
    """Return index after closing brace matching s[open_pos]=='{'."""
    depth = 0
    i = open_pos
    while i < len(s):
        c = s[i]
        if c == "{":
            depth += 1
        elif c == "}":
            depth -= 1
            if depth == 0:
                return i + 1
        i += 1
    raise ValueError(f"Unmatched brace at {open_pos}")


def replace_fbox_before_label(tex: str, label: str, tikz: str) -> tuple[str, bool]:
    needle = f"\\label{{{label}}}"
    pos = tex.find(needle)
    if pos < 0:
        return tex, False
    fbox_start = tex.rfind("\\fbox{", 0, pos)
    if fbox_start < 0:
        return tex, False
    brace_open = fbox_start + len("\\fbox")
    fbox_end = find_matching_brace(tex, brace_open)
    new_block = tikz.strip() + "\n"
    return tex[:fbox_start] + new_block + tex[fbox_end:], True


def main() -> None:
    tex = CH01.read_text(encoding="utf-8")
    converted: list[str] = []
    skipped: list[str] = []
    for label, tikz in TIKZ.items():
        tex, ok = replace_fbox_before_label(tex, label, tikz)
        if ok:
            converted.append(label)
        else:
            skipped.append(label)
    CH01.write_text(tex, encoding="utf-8")
    print(f"Converted: {len(converted)}")
    for x in converted:
        print(f"  + {x}")
    if skipped:
        print(f"Skipped: {len(skipped)}")
        for x in skipped:
            print(f"  - {x}")


if __name__ == "__main__":
    main()
