#!/bin/bash
echo "--- MISSION 2026: STARGATE DEPLOYMENT ---"
# Compile C++
g++ -O3 stargate_core.cpp -o stargate_core
# Compile Java
javac StargateManager.java

# Execute Build Sequence
./stargate_core
python3 agent_bridge.py
java StargateManager

echo "--- All Layers Synchronized with GTC 2026 Keynote ---"
