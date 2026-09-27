#!/usr/bin/env bash
set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

echo "🌌 Initializing AetherSphere..."

# Detect python executable
if [ -f "$SCRIPT_DIR/.venv/bin/python" ]; then
    PYTHON_CMD="$SCRIPT_DIR/.venv/bin/python"
elif [ -f "/mnt/d/flickrtag/.venv/bin/python" ]; then
    PYTHON_CMD="/mnt/d/flickrtag/.venv/bin/python"
else
    PYTHON_CMD="python3"
fi

"$PYTHON_CMD" "$SCRIPT_DIR/run_server.py" "$@"
