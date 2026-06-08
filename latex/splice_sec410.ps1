$dir = Split-Path -Parent $MyInvocation.MyCommand.Path

$ch04 = Join-Path $dir "ch04.tex"

$lines = [System.IO.File]::ReadAllLines($ch04)

$sec410 = -1; $sec411 = -1

for ($i = 0; $i -lt $lines.Length; $i++) {

    if ($lines[$i] -match '\\section\{Examples\}') { $sec410 = $i }

    if ($lines[$i] -match '\\section\{Chapter Summary') { $sec411 = $i; break }

}

if ($sec410 -lt 0 -or $sec411 -lt 0) { throw "Section markers not found: sec410=$sec410 sec411=$sec411" }

$head = $lines[0..($sec410-1)]

$tail = $lines[$sec411..($lines.Length-1)]

$parts = @(

    (Join-Path $dir "_ch04_sec410_intro.tex"),

    (Join-Path $dir "_ch04_sec4101_expand.tex"),

    (Join-Path $dir "_ch04_sec4102_expand.tex"),

    (Join-Path $dir "_ch04_sec4103_expand.tex"),

    (Join-Path $dir "_ch04_sec4104_expand.tex"),

    (Join-Path $dir "_ch04_sec410_close.tex")

)

$mid = @()

foreach ($p in $parts) {

    if (Test-Path $p) { $mid += [System.IO.File]::ReadAllLines($p); $mid += "" }

    else { Write-Warning "Missing $p" }

}

$out = $head + $mid + $tail

[System.IO.File]::WriteAllLines($ch04, $out)

Write-Host "Spliced sec410: head=$($head.Length) mid=$($mid.Length) tail=$($tail.Length) total=$($out.Length)"
