$dir = Split-Path -Parent $MyInvocation.MyCommand.Path

$ch04 = Join-Path $dir "ch04.tex"

$lines = [System.IO.File]::ReadAllLines($ch04)

$sec49 = -1; $sec410 = -1

for ($i = 0; $i -lt $lines.Length; $i++) {

    if ($lines[$i] -match '\\section\{Physical Consequences') { $sec49 = $i }

    if ($lines[$i] -match '\\section\{Examples\}') { $sec410 = $i; break }

}

if ($sec49 -lt 0 -or $sec410 -lt 0) { throw "Section markers not found: sec49=$sec49 sec410=$sec410" }

$head = $lines[0..($sec49-1)]

$tail = $lines[$sec410..($lines.Length-1)]

$parts = @(

    (Join-Path $dir "_ch04_sec49_intro.tex"),

    (Join-Path $dir "_ch04_sec491_expand.tex"),

    (Join-Path $dir "_ch04_sec492_expand.tex"),

    (Join-Path $dir "_ch04_sec493_expand.tex"),

    (Join-Path $dir "_ch04_sec494_expand.tex"),

    (Join-Path $dir "_ch04_sec49_close.tex")

)

$mid = @()

foreach ($p in $parts) {

    if (Test-Path $p) { $mid += [System.IO.File]::ReadAllLines($p); $mid += "" }

    else { Write-Warning "Missing $p" }

}

$out = $head + $mid + $tail

[System.IO.File]::WriteAllLines($ch04, $out)

Write-Host "Spliced sec49: head=$($head.Length) mid=$($mid.Length) tail=$($tail.Length) total=$($out.Length)"
