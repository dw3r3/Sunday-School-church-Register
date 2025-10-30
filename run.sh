#!/usr/bin/env bash
# run.sh - cross-platform-friendly runner (for Unix-like systems)
# Usage:
#   chmod +x run.sh
#   ./run.sh

VENV_DIR=${VENV_DIR:-myenv}
PYTHON=${PYTHON:-python3}

echo "Using virtualenv: $VENV_DIR"

if [ ! -f "$VENV_DIR/bin/activate" ]; then
  echo "Virtualenv not found at $VENV_DIR. Creating..."
  $PYTHON -m venv "$VENV_DIR" || { echo "Failed to create venv"; exit 1; }
  source "$VENV_DIR/bin/activate"
  echo "Installing requirements..."
  pip install --upgrade pip
  pip install -r requirements.txt || { echo "Failed installing requirements"; exit 1; }
else
  source "$VENV_DIR/bin/activate"
fi

# Run the application (development mode)
python app.py
