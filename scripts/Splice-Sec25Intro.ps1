$root = Split-Path -Parent $PSScriptRoot

$ch02 = Join-Path $root "latex\ch02.tex"

$fresh = Join-Path $root "latex\_sec25intro_fresh.tex"

$text = [System.IO.File]::ReadAllText($ch02)

$freshBody = [System.IO.File]::ReadAllText($fresh)

$startMarker = "\label{sec:ch25}"

$endMarker = "\subsection{Source-to-field integral representations}"

$startBody = $text.IndexOf($startMarker)

if ($startBody -lt 0) { throw "start marker not found" }

$afterLabel = $startBody + $startMarker.Length

$endBody = $text.IndexOf($endMarker, $afterLabel)

if ($endBody -lt 0) { throw "end marker not found" }

$newText = $text.Substring(0, $afterLabel) + "`n`n" + $freshBody.Trim() + "`n`n" + $text.Substring($endBody)

[System.IO.File]::WriteAllText($ch02, $newText)

Write-Host "sec25 intro replaced OK ($afterLabel..$endBody)"

