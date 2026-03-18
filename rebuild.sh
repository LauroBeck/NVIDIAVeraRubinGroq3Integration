#!/bin/bash
echo "--- COMMENCING 2026 BUILD: MARCH 18 REVISION (AUTO-DETECT) ---"

# 1. Compile C++
g++ -O3 -fopenmp stargate_v2.cpp -o stargate_v2
if [ $? -eq 0 ]; then 
    echo "[1/2] C++ Matrix Engine Compiled."
else 
    echo "[!] C++ Build Failed. Ensure 'libomp-dev' is installed."
    exit 1
fi

# 2. Compile Java (Auto-detecting version, enabling Vector API)
javac --add-modules jdk.incubator.vector MarketSentinel.java
if [ $? -eq 0 ]; then 
    echo "[2/2] Java Sentinel Compiled."
else 
    echo "[!] Java Build Failed."
    exit 1
fi

# 3. Execute
./stargate_v2
java --add-modules jdk.incubator.vector MarketSentinel

echo "--- Build Mission 2026 Synchronized ---"
