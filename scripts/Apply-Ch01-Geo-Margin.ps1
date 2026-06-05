# Pass 2: migrate multiline side/canvas labels in GEO figures to peripheral ch1keybox
$path = "C:\Users\S.Pal\Downloads\BOOK---Angular-structure-in-Electromagnetic-Fields\latex\ch01.tex"
$t = Get-Content -Raw -Encoding UTF8 $path
$n = 0

function Move-SideLabel([string]$text, [string]$pattern, [string]$replacement) {
    $script:n += ([regex]::Matches($text, $pattern)).Count
    return [regex]::Replace($text, $pattern, $replacement)
}

# Teal left multiline (canonical density)
$t = Move-SideLabel $t `
    '(?ms)\\node\[ch1oncanvas, teal!70!black, align=center, left=14mm\] at \(-2\.45,1\.55\)\s*\r?\n\s*\{\$\\mathbf\{d\}\^\{\\mathrm\{can\}\}\$\\\\\$=\\mathbf\{r\}!\\times!\(\\varepsilon_0\\E\)\$\}' `
    '\node[ch1keybox, fill=teal!12, teal!70!black, align=center, minimum width=36mm] at (-4.3,1.55) {Canonical density:\\$\mathbf{d}^{\mathrm{can}}=\mathbf{r}\!\times\!(\varepsilon_0\E)$}'

# Orange right multiline (stress flux)
$t = Move-SideLabel $t `
    '(?ms)\\node\[ch1oncanvas, orange!85!black, align=center, right=14mm\] at \(2\.55,1\.55\)\s*\r?\n\s*\{\$\\mathbf\{r\}!\\times!\(\\mathbf\{T\}!\\cdot!\\hat\{\\mathbf\{r\}\}\)\$\}' `
    '\node[ch1keybox, fill=orange!12, orange!85!black, align=center, minimum width=36mm] at (4.3,1.55) {Stress flux:\\$\mathbf{r}\!\times\!(\mathbf{T}\!\cdot\!\hat{\mathbf{r}})$}'

# Shell label stacks: keep symbol on canvas, move radius to keybox only when duplicate at same point
$t = [regex]::Replace($t,
    '\\node\[ch1oncanvas, red!70!black, below=10mm\] at \(1\.75,0\.75\) \{\$r=a\$\}',
    '\node[ch1oncanvas, red!70!black, below=9mm] at (1.75,0.75) {$r=a$}')

# Side numeric labels on concentric circles -> cardinal placement
$t = $t.Replace('at (0:1.45) {$kr=6.3$}', 'at (45:1.55) {$kr=6.3$}')
$t = $t.Replace('at (180:0.5) {$kr=0.63$}', 'at (225:0.58) {$kr=0.63$}')

# Block figures: trim matrix text in nodes (keep symbols)
$t = [regex]::Replace($t,
    '\$G=\\begin\{bmatrix\}1 & 1\\\\1 & -1\\end\{bmatrix\}\$\\\\\$\\kappa\(G\)=1\$',
    '$G$ well-conditioned\\$\kappa(G)=1$')

Set-Content -Path $path -Value $t -Encoding UTF8 -NoNewline
Write-Host "Geo margin touch-ups applied (pattern count ~$n)"
