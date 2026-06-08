$dir = Split-Path -Parent $MyInvocation.MyCommand.Path
$ch04 = Join-Path $dir "ch04.tex"
$lines = [System.IO.File]::ReadAllLines($ch04)
$head = $lines[0..6013]
$tail = $lines[6447..($lines.Length-1)]
$parts = @(
    (Join-Path $dir "_ch04_sec46_intro.tex"),
    (Join-Path $dir "_ch04_sec461_expand.tex"),
    (Join-Path $dir "_ch04_sec462_expand.tex"),
    (Join-Path $dir "_ch04_sec463_expand.tex"),
    (Join-Path $dir "_ch04_sec464_expand.tex"),
    (Join-Path $dir "_ch04_sec46_close.tex")
)
$mid = @()
foreach ($p in $parts) {
    $mid += [System.IO.File]::ReadAllLines($p)
    $mid += ""
}
$out = $head + $mid + $tail
[System.IO.File]::WriteAllLines($ch04, $out)
Write-Host "Spliced section 4.6: head=$($head.Length) mid=$($mid.Length) tail=$($tail.Length) total=$($out.Length)"
