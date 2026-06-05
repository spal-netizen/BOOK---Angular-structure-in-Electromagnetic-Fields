$root = Split-Path -Parent $PSScriptRoot
$ch02 = Join-Path $root "latex\ch02.tex"
$fresh = Join-Path $root "latex\_sec224_fresh.tex"
$text = [System.IO.File]::ReadAllText($ch02)
$freshBody = [System.IO.File]::ReadAllText($fresh)
$startMarker = "\subsection{Propagating, evanescent, and non-propagating subspaces}"
$endMarker = "\section{Green Functions and Electromagnetic Inversion}"
$startBody = $text.IndexOf($startMarker)
if ($startBody -lt 0) { throw "start marker not found" }
$endBody = $text.IndexOf($endMarker, $startBody + 1)
if ($endBody -lt 0) { throw "end marker not found" }
$newText = $text.Substring(0, $startBody) + $freshBody + $text.Substring($endBody)
[System.IO.File]::WriteAllText($ch02, $newText)
Write-Host "sec224 replaced OK ($startBody..$endBody)"
