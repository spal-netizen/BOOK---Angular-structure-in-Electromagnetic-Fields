$dir = Split-Path -Parent $MyInvocation.MyCommand.Path
$ch04 = Join-Path $dir "ch04.tex"
$lines = [System.IO.File]::ReadAllLines($ch04)
$sec47 = -1; $sec48 = -1
for ($i = 0; $i -lt $lines.Length; $i++) {
    if ($lines[$i] -match '\\section\{Null Spaces') { $sec47 = $i }
    if ($lines[$i] -match '\\section\{Scaling Laws') { $sec48 = $i; break }
}
if ($sec47 -lt 0 -or $sec48 -lt 0) { throw "Section markers not found: sec47=$sec47 sec48=$sec48" }
$head = $lines[0..($sec47-1)]
$tail = $lines[$sec48..($lines.Length-1)]
$parts = @(
    (Join-Path $dir "_ch04_sec47_intro.tex"),
    (Join-Path $dir "_ch04_sec471_expand.tex"),
    (Join-Path $dir "_ch04_sec472_expand.tex"),
    (Join-Path $dir "_ch04_sec473_expand.tex"),
    (Join-Path $dir "_ch04_sec474_expand.tex"),
    (Join-Path $dir "_ch04_sec47_close.tex")
)
$mid = @()
foreach ($p in $parts) {
    if (Test-Path $p) { $mid += [System.IO.File]::ReadAllLines($p); $mid += "" }
    else { Write-Warning "Missing $p" }
}
$out = $head + $mid + $tail
[System.IO.File]::WriteAllLines($ch04, $out)
Write-Host "Spliced sec47: head=$($head.Length) mid=$($mid.Length) tail=$($tail.Length) total=$($out.Length)"
