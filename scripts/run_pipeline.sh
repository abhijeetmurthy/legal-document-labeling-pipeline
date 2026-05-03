#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT_DIR"

MODE="${1:-train}"

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
