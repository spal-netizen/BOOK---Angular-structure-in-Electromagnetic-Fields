# Extract current §4.7–§4.8 subsections for pass-4 baseline (reference only)
$dir = Split-Path -Parent $MyInvocation.MyCommand.Path
$ch04 = Join-Path $dir "ch04.tex"
$lines = [System.IO.File]::ReadAllLines($ch04)
$bounds = @{
    "471" = @(7082, 7247); "472" = @(7249, 7395); "473" = @(7397, 7547); "474" = @(7549, 7693)
    "481" = @(7713, 7859); "482" = @(7861, 8000); "483" = @(8002, 8138); "484" = @(8140, 8272)
}
foreach ($k in $bounds.Keys) {
    $b = $bounds[$k]
    $slice = $lines[($b[0]-1)..($b[1]-1)]
    $out = Join-Path $dir "_ch04_sec${k}_pass3_baseline.tex"
    [System.IO.File]::WriteAllLines($out, $slice)
    Write-Host "Wrote $($slice.Length) lines -> $out"
}
