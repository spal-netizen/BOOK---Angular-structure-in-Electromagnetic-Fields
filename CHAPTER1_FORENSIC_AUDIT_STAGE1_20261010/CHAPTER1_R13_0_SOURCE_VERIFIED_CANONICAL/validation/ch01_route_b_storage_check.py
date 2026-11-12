"""Route B: shell storage J_em,vac must not alias material volume J_em,A (R13.0 batch E)."""
from __future__ import annotations


def main() -> None:
    # Regression locks on TeX labels introduced in batch D/E.
    tex_path = (
        r"C:\Users\S.Pal\Downloads\BOOK---Angular-structure-in-Electromagnetic-Fields"
        r"\CHAPTER1_FORENSIC_AUDIT_STAGE1_20261010"
        r"\CHAPTER1_R13_0_SOURCE_VERIFIED_CANONICAL"
        r"\source\CHAPTER1_R13_0_WORKING_CANDIDATE.tex"
    )
    text = open(tex_path, encoding="utf-8").read()
    required = [
        "label{eq:ch1.J-em-vac-def}",
        "mathbf{J}_{\\mathrm{em,vac}}",
        "label{eq:ch1.torque-stress-route-a}",
        "mathcal{V}_{\\mathrm{vac}}",
        "label{eq:ch1.route-b-body-torque-steady}",
    ]
  # Storage-on-V_m without vacuum qualifier was the release blocker.
    forbidden = [
        "mathbf{J}_{\\mathrm{em,store}}",
        "d\\mathbf{J}_{\\mathrm{em,store}}/dt",
    ]
    for s in required:
        assert s in text, f"missing required fragment: {s}"
    for s in forbidden:
        assert s not in text, f"forbidden fragment still present: {s}"
    print("OK: Route B storage symbols and labels present; J_em,store removed.")


if __name__ == "__main__":
    main()
