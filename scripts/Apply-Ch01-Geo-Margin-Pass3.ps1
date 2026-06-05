# Pass 3: move multiline ch1oncanvas labels in GEO figures to peripheral ch1keybox (±4.3)
$path = "C:\Users\S.Pal\Downloads\BOOK---Angular-structure-in-Electromagnetic-Fields\latex\ch01.tex"
$t = Get-Content -Raw -Encoding UTF8 $path
$count = 0

$pattern = [regex]'(?ms)\\node\[(ch1oncanvas, (?:(?:teal!70!black|orange!85!black|blue!70!black|red!70!black|purple!8)[,\s]*)*)align=center, (left|right)=\d+mm\] at \((-?[0-9.]+),(-?[0-9.]+)\)\s*\r?\n\s*\{((?:[^\}]|\\.)+)\}'

$t = [regex]::Replace($t, $pattern, {
    param($m)
    $style = $m.Groups[1].Value
    $side = $m.Groups[2].Value
    $x = [double]$m.Groups[3].Value
    $y = $m.Groups[4].Value
    $body = $m.Groups[5].Value.Trim()
    if ($body -notmatch '\\\\' -and $body.Length -lt 38) { return $m.Value }
    if ([math]::Abs($x) -lt 2.8 -and $body -notmatch '\\\\') { return $m.Value }
    $script:count++
    $col = 'fill=gray!8'
    if ($style -match 'teal') { $col = 'fill=teal!12, teal!70!black' }
    elseif ($style -match 'orange') { $col = 'fill=orange!12, orange!85!black' }
    elseif ($style -match 'blue') { $col = 'fill=blue!12, blue!70!black' }
    elseif ($style -match 'red') { $col = 'fill=red!10, red!70!black' }
    elseif ($style -match 'purple') { $col = 'fill=purple!8' }
    $nx = if ($side -eq 'left' -or $x -lt 0) { '-4.30' } else { '4.30' }
    "\node[ch1keybox, $col, align=center, minimum width=36mm] at ($nx,$y) {$body}"
})

# Merge duplicate shell symbol + radius on same anchor: keep Sa on canvas, move r= to keybox side
$t = [regex]::Replace($t,
    '(?ms)(\\node\[ch1oncanvas, red!70!black, right=14mm\] at \(1\.75,0\.75\) \{\$S_a\$\})\s*\r?\n\s*\\node\[ch1oncanvas, red!70!black, below=9mm\] at \(1\.75,0\.75\) \{\$r=a\$\}',
    '$1' + "`r`n  " + '\node[ch1keybox, fill=red!10, red!70!black, align=center, minimum width=28mm] at (4.25,0.75) {Shell radius:\\$r=a$}')

# Side cluster labels at (±2.x, 0.35) etc -> margin
$t = [regex]::Replace($t,
    '\\node\[ch1oncanvas, align=center\] at \((-2\.[0-9]+|2\.[0-9]+),0\.35\)',
    {
        param($m)
        $x = $m.Groups[1].Value
        $nx = if ($x.StartsWith('-')) { '-4.25' } else { '4.25' }
        "\\node[ch1keybox, fill=gray!8, align=center, minimum width=34mm] at ($nx,0.35)"
    })

Set-Content -Path $path -Value $t -Encoding UTF8 -NoNewline
Write-Host "Pass 3 margin migrations: $count"
