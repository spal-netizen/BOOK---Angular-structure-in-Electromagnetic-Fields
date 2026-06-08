$dir = Split-Path -Parent $MyInvocation.MyCommand.Path
$ch04 = Join-Path $dir "ch04.tex"
$lines = [System.IO.File]::ReadAllLines($ch04)
$sec48 = -1; $sec49 = -1
for ($i = 0; $i -lt $lines.Length; $i++) {
    if ($lines[$i] -match '\\section\{Scaling Laws') { $sec48 = $i }
    if ($lines[$i] -match '\\section\{Physical Consequences') { $sec49 = $i; break }
}
if ($sec48 -lt 0 -or $sec49 -lt 0) { throw "Section markers not found: sec48=$sec48 sec49=$sec49" }
$head = $lines[0..($sec48-1)]
$tail = $lines[$sec49..($lines.Length-1)]
$parts = @(
    (Join-Path $dir "_ch04_sec48_intro.tex"),
    (Join-Path $dir "_ch04_sec481_expand.tex"),
    (Join-Path $dir "_ch04_sec482_expand.tex"),
    (Join-Path $dir "_ch04_sec483_expand.tex"),
    (Join-Path $dir "_ch04_sec484_expand.tex"),
    (Join-Path $dir "_ch04_sec48_close.tex")
)
$mid = @()
foreach ($p in $parts) {
    if (Test-Path $p) { $mid += [System.IO.File]::ReadAllLines($p); $mid += "" }
    else { Write-Warning "Missing $p" }
}
$out = $head + $mid + $tail
[System.IO.File]::WriteAllLines($ch04, $out)
Write-Host "Spliced sec48: head=$($head.Length) mid=$($mid.Length) tail=$($tail.Length) total=$($out.Length)"
