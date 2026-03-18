import json

def get_2026_projections():
    # March 18, 2026 Closing Baseline
    current_spx = 6618.41
    
    projections = {
        "Bull_Case_Oppenheimer": 8100,
        "Base_Case_Morgan_Stanley": 7800,
        "Conservative_BofA": 7100,
        "Earnings_EPS_Target": 305.00,
        "Implied_PE_Ratio": 26.5
    }
    
    print("--- S&P 500 VALUATION PROJECTIONS (MARCH 18) ---")
    for bank, target in projections.items():
        upside = ((target - current_spx) / current_spx) * 100 if isinstance(target, (int, float)) and target > 1000 else 0
        if upside > 0:
            print(f"[*] {bank:25} : {target} ({upside:+.2f}%)")
        else:
            print(f"[*] {bank:25} : {target}")

if __name__ == "__main__":
    get_2026_projections()
