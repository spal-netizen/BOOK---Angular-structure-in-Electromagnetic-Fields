$root = Split-Path -Parent $PSScriptRoot
$ch02 = Join-Path $root "latex\ch02.tex"
$fresh = Join-Path $root "latex\_sec201_fresh.tex"
$lines = Get-Content $ch02 -Raw
$freshBody = Get-Content $fresh -Raw
$pattern = '(?s)(% TOC tag: \[HOME\]\r?\n\r?\n).*?(?=\\subsection\{Maxwell equations in operator form\})'
$new = [regex]::Replace($lines, $pattern, "`$1$freshBody")
if ($new -eq $lines) { throw "Replacement failed" }
[System.IO.File]::WriteAllText($ch02, $new)
Write-Host "sec201 replaced OK"
