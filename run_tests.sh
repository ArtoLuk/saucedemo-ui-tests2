#!/usr/bin/env bash
set -euo pipefail

# Create virtual environment if it doesn't exist
if [ ! -d "venv" ]; then
    python3 -m venv venv
fi

# Activate virtual environment
source venv/bin/activate

# Install dependencies
python -m pip install --upgrade pip
python -m pip install -r requirements.txt
python -m Browser.entry init

# Run tests
python -m robot -d results tests
