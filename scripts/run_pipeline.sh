#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT_DIR"

MODE="${1:-train}"

if ! python3 - <<'PY'
import importlib.util
import sys
required = ["flask", "gensim", "numpy", "spacy", "torch", "tqdm"]
missing = [pkg for pkg in required if importlib.util.find_spec(pkg) is None]
if missing:
    print("Missing Python package(s): " + ", ".join(missing))
    print("Install with: python3 -m pip install -r requirements.txt")
    sys.exit(1)
PY
then
  exit 1
fi

if ! python3 - <<'PY'
import spacy
import sys
try:
    spacy.load("en_core_web_sm")
except Exception:
    print("Missing spaCy model: en_core_web_sm")
    print("Install with: python3 -m spacy download en_core_web_sm")
    sys.exit(1)
PY
then
  exit 1
fi

case "$MODE" in
  train)
    python3 src/main.py
    ;;
  api)
    python3 src/api.py
    ;;
  web)
    python3 src/web.py
    ;;
  *)
    echo "Unknown mode: $MODE"
    echo "Usage: ./scripts/run_pipeline.sh [train|api|web]"
    exit 1
    ;;
esac
