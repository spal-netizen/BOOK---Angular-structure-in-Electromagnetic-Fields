# Convert listed fbox figures in ch01.tex to TikZ (embeds tikz bodies from .py source)
$ErrorActionPreference = 'Stop'
$root = (Resolve-Path (Join-Path $PSScriptRoot '..')).Path
$ch01 = Join-Path $root 'latex\ch01.tex'
$py = Join-Path $PSScriptRoot 'convert-ch01-fbox-to-tikz.py'

# Parse TIKZ dict from Python file (simple regex extraction)
$pyText = Get-Content $py -Raw -Encoding UTF8
$tikz = @{}
$pattern = '(?s)"(fig:ch1\.[^"]+)":\s*r"""(.*?)"""'
[regex]::Matches($pyText, $pattern) | ForEach-Object {
    $tikz[$_.Groups[1].Value] = $_.Groups[2].Value.Trim()
}

function Find-MatchingBrace([string]$s, [int]$openPos) {
    $depth = 0
    for ($i = $openPos; $i -lt $s.Length; $i++) {
        $c = $s[$i]
        if ($c -eq '{') { $depth++ }
        elseif ($c -eq '}') {
            $depth--
            if ($depth -eq 0) { return $i + 1 }
        }
    }
    throw "Unmatched brace at $openPos"
}

$tex = Get-Content $ch01 -Raw -Encoding UTF8
$converted = @()
$skipped = @()
foreach ($label in $tikz.Keys) {
    $needle = "\label{$label}"
    $pos = $tex.IndexOf($needle)
    if ($pos -lt 0) { $skipped += $label; continue }
    $fboxStart = $tex.LastIndexOf('\fbox{', $pos)
    if ($fboxStart -lt 0) { $skipped += $label; continue }
    $braceOpen = $fboxStart + '\fbox'.Length
    $fboxEnd = Find-MatchingBrace $tex $braceOpen
    $newBlock = $tikz[$label] + "`n"
    $tex = $tex.Substring(0, $fboxStart) + $newBlock + $tex.Substring($fboxEnd)
    $converted += $label
}
Set-Content -Path $ch01 -Value $tex -Encoding UTF8 -NoNewline
Write-Host "Converted: $($converted.Count)"
$converted | ForEach-Object { Write-Host "  + $_" }
if ($skipped.Count) {
    Write-Host "Skipped: $($skipped.Count)"
    $skipped | ForEach-Object { Write-Host "  - $_" }
}
