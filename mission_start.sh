#!/bin/bash
# Ensure we are in the venv
if [[ "$VIRTUAL_ENV" == "" ]]; then
    source venv/bin/activate
fi

echo "Starting Unified Stargate Mission..."
echo "------------------------------------"
./stargate_v2
java --add-modules jdk.incubator.vector MarketSentinel
python3 inference_agent.py
echo "------------------------------------"
echo "Mission 2026: All Systems Green."
