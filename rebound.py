import numpy as np

vix_now = 25.09
# Volatility window leading into the March 18 Fed Decision
vix_history = [20.1, 21.5, 23.2, 22.8, 24.1, 25.09]

def analyze():
    z_score = (vix_now - np.mean(vix_history)) / np.std(vix_history)
    print(f"[Python] VIX Z-Score: {z_score:.2f}")
    
    if z_score > 1.5:
        print("[Python] SIGNAL: STRONG BUY (Mean Reversion Alpha)")
    else:
        print("[Python] SIGNAL: NEUTRAL")

if __name__ == "__main__":
    analyze()
