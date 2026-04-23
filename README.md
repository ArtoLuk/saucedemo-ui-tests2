# Saucedemo UI Automation Suite (Robot Framework + Browser Library)

This repository contains a maintainable browser-based UI automation suite for https://www.saucedemo.com/.

## What is covered
- Authentication happy path and negative path
- Product catalog behavior (sorting)
- Cart interaction
- Checkout completion
- Logout flow

## Project structure
- `tests/saucedemo_core.robot` - suite with 6 core tests
- `resources/common.resource` - shared setup and reusable business keywords
- `resources/pages/*.resource` - page-object style keyword files and selectors
- `run_tests.sh` - one-command setup + execution

## Prerequisites
- Python 3.10+
- Internet access (needed to download Playwright browser binaries on first run)

## Run in a clean environment
Use these exact commands:

```bash
python3 -m venv .venv
source .venv/bin/activate
./run_tests.sh
```

Results are generated under `results/` (`log.html`, `report.html`, `output.xml`).

## Optional: run directly after initial setup
```bash
python3 -m robot -d results tests
```
