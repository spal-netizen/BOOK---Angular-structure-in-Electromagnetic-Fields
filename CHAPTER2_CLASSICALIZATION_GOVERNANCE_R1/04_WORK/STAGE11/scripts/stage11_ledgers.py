"""Stage 11 — generate preservation, pedagogical, symbol, examples ledgers."""
from __future__ import annotations

import csv
import json
import re
from pathlib import Path

ROOT = Path(__file__).resolve().parents[4]
OUT = Path(__file__).resolve().parents[1]
RESTORED = ROOT / "latex/ch02-classical/restored"
SECTIONS = RESTORED / "sections"
INVENTORY = (
    ROOT
    / "CHAPTER2_CLASSICALIZATION_GOVERNANCE_R1/04_WORK/TRANSFORMATION/CHAPTER2_STAGE7_ORIGINAL_INVENTORY.json"
)
BASELINE_PDF = (
    ROOT
    / "CHAPTER2_CLASSICALIZATION_GOVERNANCE_R1/02_INPUT/Volume-I-Author-Review-105-252_BASELINE_IMMUTABLE.pdf"
)

SUBSECTIONS = [
    ("2.0", "section-orig-001 + restore 002-004"),
    ("2.1", "section-orig-005 + restore 006-009"),
    ("2.2", "section-orig-010 + restore 011-013"),
    ("2.3", "section-orig-014 + restore 015-019"),
    ("2.4", "section-orig-020 + restore 021-024"),
    ("2.5", "section-orig-025 + restore 026-029"),
    ("2.6", "section-orig-030 + restore 031-035"),
    ("2.7", "section-orig-036 + restore 037-040"),
    ("2.8", "section-orig-041 + restore 042-044"),
    ("2.9", "section-orig-045 + restore 046-048"),
    ("2.10", "section-orig-049 + restore 050-053"),
    ("2.11", "section-orig-054 + restore 055-057"),
    ("append", "part06-hertzian + part09-problems"),
]


def preservation_ledger() -> None:
    rows = []
    inv_count = 0
    if INVENTORY.exists():
        inv = json.loads(INVENTORY.read_text(encoding="utf-8"))
        inv_count = len(inv) if isinstance(inv, list) else len(inv.get("items", []))
    for sec, loc in SUBSECTIONS:
        disp = "retained_and_pedagogically_reconstructed" if sec == "2.1" else "retained_substantially_intact"
        if sec in ("2.2", "2.3", "2.4", "2.5", "2.6", "2.7", "2.8", "2.9"):
            disp = "retained_substantially_intact"
        rows.append(
            {
                "baseline_location": f"baseline_pdf §{sec} (148pp archive)",
                "baseline_item_type": "section_block",
                "baseline_scientific_content": f"Stage7 inventory unit(s) for §{sec}; {inv_count} total inventory rows in Stage7 JSON",
                "stage10_location": loc,
                "stage11_location": loc,
                "disposition": disp,
                "scientific_reason": "Restore chain preserved; §2.1 Batch A prose reconstructed",
                "derivation_status": "verified_spot" if sec == "2.1" else "inherits_stage10",
                "equation_impact": "none" if sec != "2.1" else "none_sign_change",
                "figure_or_problem_impact": "none",
                "reference_impact": "ch1_forward_debt_unchanged",
                "verification_status": "partial_manual" if sec == "2.1" else "unverified_line_by_line",
            }
        )
    path = OUT / "STAGE11_BASELINE_TO_FINAL_SCIENTIFIC_PRESERVATION_LEDGER.csv"
    with path.open("w", newline="", encoding="utf-8") as f:
        w = csv.DictWriter(f, fieldnames=list(rows[0].keys()))
        w.writeheader()
        w.writerows(rows)
    print("preservation", len(rows))


def pedagogical_ledger() -> None:
    rows = []
    for sec, loc in SUBSECTIONS:
        if sec == "2.1":
            st = "incomplete"
            repair = "Batch A started; subsections 2.1.2–2.1.4 need same pass"
        elif sec == "2.0":
            st = "complete"
            repair = "Stage 10 intro + principle"
        else:
            st = "incomplete"
            repair = f"Batch pending for §{sec}"
        rows.append(
            {
                "subsection": sec,
                "source_location": loc,
                "physical_motivation": st,
                "symbol_definitions": st,
                "derivation_central_eqs": "not_applicable" if sec == "2.11" else st,
                "interpretation_limits": st,
                "examples_geometry": "not_applicable" if sec not in ("2.10", "append") else st,
                "continuity": st,
                "status_overall": st,
                "smallest_repair": repair,
            }
        )
    path = OUT / "STAGE11_PEDAGOGICAL_COMPLETENESS_LEDGER.csv"
    with path.open("w", newline="", encoding="utf-8") as f:
        w = csv.DictWriter(f, fieldnames=list(rows[0].keys()))
        w.writeheader()
        w.writerows(rows)


def equation_claim_ledger() -> None:
    tex = (ROOT / "latex/ch02-classical/restored/restore-orig-006-2-1-1-spaces-for-sources-fields-and-distributions.tex").read_text(
        encoding="utf-8", errors="replace"
    )
    claims = [
        ("HCurl definition", "eq:ch2.hcurl-space", "definition", "passed", "none"),
        ("Hdiv definition", "eq:ch2.hdiv-space", "definition", "passed", "none"),
        ("Charge continuity screen", "eq:ch2.continuity-operator-domain", "derived", "passed", "matches -jωt package"),
        ("Maxwell weak form", "eq:ch2.maxwell-weak-form", "derived", "blocked", "requires Batch B Green section audit"),
    ]
    rows = []
    for name, label, kind, outcome, fix in claims:
        rows.append(
            {
                "claim_or_equation": name,
                "label": label,
                "claim_type": kind,
                "source_file": "restore-orig-006 + sec203",
                "assumptions": "Lipschitz Ω; exp(-jωt); SI",
                "verification_method": "source_inspection",
                "outcome": outcome,
                "correction": fix,
                "downstream_dependencies": "sec:ch23–ch25",
                "author_input_required": "no",
            }
        )
    path = OUT / "STAGE11_EQUATION_AND_CLAIM_RECONCILIATION_LEDGER.csv"
    with path.open("w", newline="", encoding="utf-8") as f:
        w = csv.DictWriter(f, fieldnames=list(rows[0].keys()))
        w.writeheader()
        w.writerows(rows)


def symbol_register() -> None:
    symbols = [
        ("\\HCurl(\\Omega)", "curl-Sobolev fields", "sec:ch211", "complete"),
        ("\\Hdiv(\\Omega)", "divergence-Sobolev fields", "sec:ch211", "complete"),
        ("\\mathcal{S}_\\omega", "harmonic Maxwell solution map", "sec:ch201", "complete"),
        ("\\Pi_{\\mathrm{rad}}", "outgoing selector (not proved orthogonal)", "sec:ch201", "complete"),
        ("\\mathcal{R}_\\omega", "radiation map", "sec:ch201", "complete"),
        ("\\eim", "exp(-jωt) time factor", "ch02-stage9-preamble", "complete"),
    ]
    path = OUT / "STAGE11_FIRST_USE_SYMBOL_REGISTER.csv"
    with path.open("w", newline="", encoding="utf-8") as f:
        w = csv.DictWriter(
            f,
            fieldnames=["symbol", "meaning", "first_location", "definition_status"],
        )
        w.writeheader()
        for s in symbols:
            w.writerow(dict(zip(w.fieldnames, s)))


def examples_ledger() -> None:
    rows = [
        ("part06-hertzian-dipole.tex", "Hertzian dipole far zone + power", "verified_stage10", "retain", "dyadic labels bridged"),
        ("part09-worked-problems.tex", "Problems A–G", "verified_stage10", "retain", "J_imp subscript fix"),
        ("fig:ch2.master-spine", "Operator spine", "complete", "retain", "TikZ in §2.0"),
    ]
    path = OUT / "STAGE11_EXAMPLES_FIGURES_PROBLEMS_LEDGER.csv"
    with path.open("w", newline="", encoding="utf-8") as f:
        w = csv.DictWriter(
            f,
            fieldnames=["location", "purpose", "derivation_status", "disposition", "reason"],
        )
        w.writeheader()
        for r in rows:
            w.writerow(dict(zip(w.fieldnames, r)))


if __name__ == "__main__":
    OUT.mkdir(parents=True, exist_ok=True)
    # Full preservation: run scripts/expand_preservation.py (Stage7 inventory)
    pedagogical_ledger()
    equation_claim_ledger()
    symbol_register()
    examples_ledger()
