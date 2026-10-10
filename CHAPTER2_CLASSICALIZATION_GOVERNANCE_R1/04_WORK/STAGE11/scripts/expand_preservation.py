import csv
import json
from pathlib import Path

ROOT = Path(__file__).resolve().parents[4]
OUT = Path(__file__).resolve().parents[1] / "STAGE11_BASELINE_TO_FINAL_SCIENTIFIC_PRESERVATION_LEDGER.csv"
inv = json.loads(
    (
        ROOT
        / "CHAPTER2_CLASSICALIZATION_GOVERNANCE_R1/04_WORK/TRANSFORMATION/CHAPTER2_STAGE7_ORIGINAL_INVENTORY.json"
    ).read_text(encoding="utf-8")
)
rows = []
for item in inv:
    title = item.get("title", "")
    disp = "retained_substantially_intact"
    if title.startswith("2.0") or title.startswith("2.1"):
        disp = "retained_and_pedagogically_reconstructed"
    rows.append(
        {
            "baseline_location": f"baseline_tex L{item['start_line']}-L{item['end_line']} {item['id']}",
            "baseline_item_type": item["kind"],
            "baseline_scientific_content": title[:120],
            "stage10_location": "restored chain / ch02-stage10.tex",
            "stage11_location": "restored chain / ch02-stage11.tex",
            "disposition": disp,
            "scientific_reason": "Stage7 restore span mapped to ch02-classical/restored",
            "derivation_status": "unverified_line_by_line",
            "equation_impact": "none_unless_noted_in_stage10_defect_csv",
            "figure_or_problem_impact": f"fig_labels={item.get('fig_labels', 0)} eq_labels={item.get('eq_labels', 0)}",
            "reference_impact": "see STAGE11_REFERENCE_CLOSURE_REPORT",
            "verification_status": "inventory_mapping_only",
        }
    )
with OUT.open("w", newline="", encoding="utf-8") as f:
    w = csv.DictWriter(f, fieldnames=list(rows[0].keys()))
    w.writeheader()
    w.writerows(rows)
print(len(rows))
