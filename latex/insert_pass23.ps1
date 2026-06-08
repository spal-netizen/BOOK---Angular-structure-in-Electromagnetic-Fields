# Insert pass-2+3 blocks before Validity in §4.7 and §4.8 subsections
$dir = Split-Path -Parent $MyInvocation.MyCommand.Path
$ch04 = Join-Path $dir "ch04.tex"
$text = [System.IO.File]::ReadAllText($ch04)

$pairs = @(
    @("sec:ch471", "_ch04_sec47_p2p3_471.tex"),
    @("sec:ch472", "_ch04_sec47_p2p3_472.tex"),
    @("sec:ch473", "_ch04_sec47_p2p3_473.tex"),
    @("sec:ch474", "_ch04_sec47_p2p3_474.tex"),
    @("sec:ch481", "_ch04_sec48_p2p3_481.tex"),
    @("sec:ch482", "_ch04_sec48_p2p3_482.tex"),
    @("sec:ch483", "_ch04_sec48_p2p3_483.tex"),
    @("sec:ch484", "_ch04_sec48_p2p3_484.tex")
)

foreach ($pair in ($pairs | Sort-Object { $text.IndexOf("\label{$($_[0])}") } -Descending)) {
    $label = $pair[0]
    $file = Join-Path $dir $pair[1]
    if (-not (Test-Path $file)) { Write-Warning "Missing $file"; continue }
    $block = [System.IO.File]::ReadAllText($file)
    $marker = "\label{$label}"
    $idx = $text.IndexOf($marker)
    if ($idx -lt 0) { Write-Warning "Label $label not found"; continue }
    $val = $text.IndexOf("\paragraph{Validity.}", $idx)
    if ($val -lt 0) { Write-Warning "Validity not found after $label"; continue }
    $text = $text.Substring(0, $val) + $block + $text.Substring($val)
    Write-Host "Inserted before $label Validity"
}

[System.IO.File]::WriteAllText($ch04, $text)
Write-Host "Done."
