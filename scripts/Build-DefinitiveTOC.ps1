# Build definitive TOC from original: full coverage, cleaned titles, architecture comments
$origPath = "c:\Users\S.Pal\Downloads\Before smoothening TOC-Angular structure in Electromagnetic Fields.txt"
$outPath  = "c:\Users\S.Pal\Downloads\BOOK - Angular structure in Electromagnetic Fields\TOC\TOC-master-19chapters-definitive.txt"
$volPath  = "c:\Users\S.Pal\Downloads\BOOK - Angular structure in Electromagnetic Fields\TOC\volume-I-ch01-04-definitive.txt"

function Clean-Title([string]$t) {
    $t = $t.Trim()
    # Remove duplicate 7.2.1 handled by skip list
    $replacements = @(
        @('Angularly Structured Electromagnetic Fields', 'EM Fields'),
        @('Angular Electromagnetic Structure', 'Angular Structure'),
        @('of Angularly Structured Electromagnetic Fields', ''),
        @('Angular Structure in Electromagnetic Fields', 'Angular Structure'),
        @('Inherited from Chapters [\d–\-]+', ''),
        @('Relation to the Foundational Structures of Chapters [\d–\-]+', 'Continuity with prior chapters'),
        @('Relation to Chapters [\d–\-]+', 'Continuity with prior chapters'),
        @('Relation to the Foundations Established in Chapter \d+', 'Continuity with prior chapter'),
        @('Structural Summary and Chapter Inheritance', 'Chapter Summary and Forward Map'),
        @('Foundational Examples and ', 'Examples: '),
        @('Foundational Examples', 'Examples'),
        @('Foundational Judgment and Interpretation Problems', 'Judgment Problems'),
        @('\s+', ' ')
    )
    foreach ($pair in $replacements) {
        $t = [regex]::Replace($t, $pair[0], $pair[1], 'IgnoreCase')
    }
    $t = $t.Trim()
    if ($t.Length -gt 95) {
        # keep first clause before comma chain
        $parts = $t -split ',\s+'
        if ($parts.Count -gt 4) { $t = ($parts[0..3] -join ', ') }
    }
    return $t.Trim()
}

$lines = Get-Content $origPath -Encoding UTF8
$out = New-Object System.Collections.Generic.List[string]
$ch = 0
$seen72 = $false
$lastSec = ''

$header = @"
# ═══════════════════════════════════════════════════════════════════════════════
# DEFINITIVE TOC — Angular Structure in Electromagnetic Fields (19 Chapters)
# Source: original manuscript outline (full mathematical & physics coverage)
# Conventions: exp(-jωt), SI | Forward-only | Zero tolerance for body-text recursion
# ═══════════════════════════════════════════════════════════════════════════════
# LEGEND (inline comments):
#   [HOME]     = Primary definition/proof location (do not repeat elsewhere)
#   [USE §x.y] = Apply prior result by reference only — no re-derivation
#   [DEFER]    = Named in §X.7+/§X.11+ forward map only until target chapter
#   [FIG+PROB] = Worked problem + schematic figure with caption in running text
#   [CHECK]    = Editorial fix applied (duplicate removed / numbering corrected)
# ═══════════════════════════════════════════════════════════════════════════════

"@
$out.AddRange($header)

foreach ($line in $lines) {
    $raw = $line.Trim()
    if ([string]::IsNullOrWhiteSpace($raw)) { continue }

    if ($raw -match '^Chapter\s+(\d+)\s+.+?\s+(.+)$') {
        $ch = [int]$matches[1]
        $ct = Clean-Title $matches[2]
        $out.Add("")
        $out.Add("Chapter $ch - $ct")
        $out.Add("# [ARCH] Ch.$ch NEW: operator/spectral/physical content introduced here only.")
        $out.Add("# [ARCH] Ch.$ch USE: cite Vol.I Ch.1-4 or prior chapters; no repeated Maxwell/VSH proofs.")
        $out.Add("# [ARCH] Ch.$ch Examples blocks marked [FIG+PROB] require diagram + captioned figure.")
        continue
    }

    if ($raw -match '^(\d+\.\d+\.\d+)\s+(.+)$') {
        $id = $matches[1]
        $title = Clean-Title $matches[2]

        # Skip duplicate 7.2.1
        if ($id -eq '7.2.1' -and $seen72) {
            $out.Add("# $id [CHECK] Duplicate entry removed - content at first 7.2.1 [HOME].")
            continue
        }
        if ($id -eq '7.2.1') { $seen72 = $true }

        # Fix misnumbered 7.9.4 under 7.7
        if ($id -eq '7.9.4' -and $lastSec -like '7.7*') { $id = '7.7.4' }

        $tag = ''
        if ($title -match 'Examples|Problems') { $tag = ' [FIG+PROB]' }
        elseif ($id -match '\.0\.[123]$') { $tag = ' [USE prior chapters]' }
        elseif ($id -match '\.7\.[123]$|\.11\.[123]$|\.1[4-9]\.[123]$') { $tag = ' [DEFER list — forward map only]' }

        $out.Add("$id $title$tag")
        continue
    }

    if ($raw -match '^(\d+\.\d+)\s+(.+)$') {
        $lastSec = $matches[1]
        $id = $matches[1]
        $title = Clean-Title $matches[2]
        if ($id -match '\.0$') { $out.Add("$id $title"); $out.Add("#   Section $id - introduction only; no new definitions.") }
        elseif ($title -match 'Examples') { $out.Add("$id $title [FIG+PROB]"); $out.Add("#   Each subsection: Problem, full solution, physical meaning, captioned figure.") }
        elseif ($title -match 'Chapter Summary|Forward Map') { $out.Add("$id $title"); $out.Add("#   Sole location for explicit forward pointers to later chapters.") }
        else { $out.Add("$id $title") }
        continue
    }
}

$out.Add("")
$out.Add("# END DEFINITIVE TOC")

[System.IO.File]::WriteAllLines($outPath, $out, [System.Text.UTF8Encoding]::new($false))

# Extract Volume I
$vol = New-Object System.Collections.Generic.List[string]
$vol.AddRange(@(
    "# VOLUME I - DEFINITIVE TOC (Chapters 1-4)",
    "# Full subsection coverage - see TOC-master-19chapters-definitive.txt",
    "# exp(-jwt), SI | [HOME]/[USE]/[FIG+PROB] tags as in master file",
    ""
))
$in = $false
foreach ($l in $out) {
    if ($l -match '^Chapter\s+1\s') { $in = $true }
    if ($l -match '^Chapter\s+5\s') { break }
    if ($in) { $vol.Add($l) }
}
$vol.Add("# END VOLUME I")
[System.IO.File]::WriteAllLines($volPath, $vol, [System.Text.UTF8Encoding]::new($false))

Write-Host "Wrote $($out.Count) lines to definitive master"
Write-Host "Wrote $($vol.Count) lines to definitive Vol I"
