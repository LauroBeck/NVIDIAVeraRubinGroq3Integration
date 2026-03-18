#!/bin/bash
echo "--- STARGATE CLUSTER: DEPLOYING REBOUND v2.0.3-ALPHA ---"
source venv/bin/activate

# 1. C++ Engine (Vera Optimized)
g++ -O3 rebound.cpp -o rebound_engine
./rebound_engine

# 2. Java Risk Gate
javac ReboundGate.java
java ReboundGate

# 3. Python Signal
python3 rebound.py

echo "--- DEPLOYMENT COMPLETE: MARCH 18 CLOSING BELL SYNC ---"
echo "--- Repository: https://github.com/LauroBeck/NVIDIAVeraRubinGroq3Integration ---"
