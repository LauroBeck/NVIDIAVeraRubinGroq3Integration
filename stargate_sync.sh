#!/bin/bash
source venv/bin/activate
echo "--- STARGATE CLUSTER 2026: GEOPOLITICAL RESILIENCE ---"

# Compile new layers
g++ -O3 hormuz_monitor.cpp -o hormuz_monitor
javac ComplianceGuard.java

# Execute
./hormuz_monitor
java ComplianceGuard
python3 git_sync.py

echo "--- Build Mission 2026: REVISION 2.0.2 COMPLETE ---"
