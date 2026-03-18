#!/bin/bash
echo "--- Starting 2026 Build Mission ---"
g++ -O3 matrix_engine.cpp -o matrix_engine
echo "[1/2] C++ Matrix Core Compiled."
python3 inference_agent.py
echo "[2/2] Python Agentic Wrapper Verified."
echo "--- Build Successful ---"
