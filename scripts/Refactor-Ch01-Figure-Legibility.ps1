# Batch Ch.1 figure legibility refactor — classify BLOCK vs GEO, swap resize macros
$path = "C:\Users\S.Pal\Downloads\BOOK---Angular-structure-in-Electromagnetic-Fields\latex\ch01.tex"
$text = Get-Content -Raw -Encoding UTF8 $path
$stats = @{ BLOCK = 0; GEO = 0 }

function Classify-Tikz([string]$body, [string]$label) {
    if ($label -match 'fig:ch1\.(ex6|wp-)') { return 'GEO' }
    $geo = 0
    foreach ($m in @('\draw[ch1shell', ' circle (', ' arc (', 'ch1axis', 'ch1geo', 'ch1src', 'ellipse (')) {
        $geo += ([regex]::Matches($body, [regex]::Escape($m).Replace('\\','\'))).Count
    }
    $boxes = ([regex]::Matches($body, '\\node\[ch1box')).Count
    $flows = ([regex]::Matches($body, '\\draw\[ch1flow\]')).Count
    if ($boxes -ge 3 -and $flows -ge 1 -and $geo -le 2) { return 'BLOCK' }
    if ($geo -ge 1) { return 'GEO' }
    if ($boxes -ge 2 -and $flows -ge 1) { return 'BLOCK' }
    return 'GEO'
}

function Process-Tikz([string]$tikz, [string]$label) {
    $kind = Classify-Tikz $tikz $label
    $t = $tikz
    $t = [regex]::Replace($t, 'Eq\.~\\eqref\{[^}]+\};\s*', '')
    $t = [regex]::Replace($t, ';\s*Eq\.~\\eqref\{[^}]+\}', '')
    $t = [regex]::Replace($t, 'Eq\.~\\eqref\{[^}]+\}', '')
    $t = $t.Replace('[ch1lblout', '[ch1oncanvas')
    $t = $t.Replace('ch1lblout,', 'ch1oncanvas,')
    $repl = @{
        'left=3mm'='left=11mm'; 'left=4mm'='left=11mm'; 'left=6mm'='left=12mm'
        'left=7mm'='left=12mm'; 'left=8mm'='left=14mm'; 'left=10mm'='left=14mm'
        'right=3mm'='right=11mm'; 'right=5mm'='right=12mm'; 'right=6mm'='right=12mm'
        'right=8mm'='right=14mm'; 'right=10mm'='right=14mm'
        'below=5mm'='below=9mm'; 'below=6mm'='below=10mm'; 'below=7mm'='below=10mm'
        'below=8mm'='below=11mm'; 'above=3mm'='above=8mm'; 'above=4mm'='above=8mm'
    }
    foreach ($k in $repl.Keys) { $t = $t.Replace($k, $repl[$k]) }
    if ($kind -eq 'GEO') {
        if ($t -match 'ch1keybox' -and ($t -split '\\node\[ch1box').Count -gt 3) {
            $scale = 'scale=0.86'
        } else { $scale = 'scale=0.90' }
        $t = [regex]::Replace($t, '\\begin\{tikzpicture\}\[[^\]]+\]', "\\begin{tikzpicture}[ch1geo, $scale]", 1)
        $t = [regex]::Replace($t,
            '\\node\[ch1oncanvas, align=center\] at \(0,(-?[0-9.]+)\)\s*\r?\n\s*\{([^}]{45,})\}',
            {
                param($m)
                $y = $m.Groups[1].Value
                $txt = $m.Groups[2].Value.Trim()
                if ([double]$y -gt -2.5) { $y = '-2.85' }
                "\\node[ch1keybox, fill=gray!8, align=center, minimum width=48mm] at (0,$y) {$txt}"
            })
    } else {
        $nd = 'node distance=9mm and 11mm'
        if ($t -match 'node distance=[^,\]]+') { $nd = $Matches[0] }
        $t = [regex]::Replace($t, '\\begin\{tikzpicture\}\[[^\]]+\]', "\\begin{tikzpicture}[ch1fig, $nd]", 1)
    }
    return @{ Tikz = $t; Kind = $kind }
}

$newText = [regex]::Replace($text,
    '\\begin\{figure\}\[([^\]]*)\]\s*\r?\n\\centering\s*\r?\n\\ChOneFig(?:Resize|Block|Geo)\{%\s*\r?\n(\\begin\{tikzpicture\}.*?\\end\{tikzpicture\}%)',
    {
        param($m)
        $opt = $m.Groups[1].Value
        $tikz = $m.Groups[2].Value
        $tailStart = $m.Index + $m.Length
        $tail = $text.Substring([Math]::Min($tailStart, $text.Length - 1), [Math]::Min(500, $text.Length - $tailStart))
        $label = ''
        if ($tail -match '\\label\{(fig:ch1\.[^}]+)\}') { $label = $Matches[1] }
        $res = Process-Tikz $tikz $label
        $script:stats[$res.Kind]++
        $macro = if ($res.Kind -eq 'BLOCK') { "\ChOneFigBlock{%" } else { "\ChOneFigGeo{%" }
        return @"
\begin{figure}[$opt]
\centering
$macro
$($res.Tikz)
"@
    },
    [System.Text.RegularExpressions.RegexOptions]::Singleline)

Set-Content -Path $path -Value $newText -Encoding UTF8 -NoNewline
Write-Host "Processed figures: BLOCK=$($stats.BLOCK) GEO=$($stats.GEO) Total=$($stats.BLOCK + $stats.GEO)"
Write-Host "ChOneFigBlock:" ([regex]::Matches($newText, '\\ChOneFigBlock').Count)
Write-Host "ChOneFigGeo:" ([regex]::Matches($newText, '\\ChOneFigGeo').Count)
