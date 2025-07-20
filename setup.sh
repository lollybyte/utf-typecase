#!/bin/sh
# ---------------------------------------------------------------------
# 🛠 Setup Script: Development Environment Initialization
#
# This script performs the following steps:
#  1. Creates a hidden virtual environment
#  2. Activates the virtual environment
#  3. Upgrades pip to the latest version
#  4. Installs Python dependencies from requirements.txt
#
# 👉 Usage:
#     . setup.sh
#     OR
#     source setup.sh
#
# NOTE: Use '.' or 'source' to run this script so the virtual
#       environment remains active in your current shell session.
#
# Intended for developers setting up the project locally.
# ---------------------------------------------------------------------

venv=".utf-typecase-env"
requirements_file="requirements.txt"
dev_requirements_file="requirements-dev.txt"
python_cmd="python3"

echo "🛠 Starting setup..."

# Create virtual environment if it doesn't exist
if [ ! -d "$venv" ]; then
  echo "🔧 Creating virtual environment in '$venv'..."
  $python_cmd -m venv "$venv"
  if [ $? -eq 0 ]; then
    echo "✅ Virtual environment created."
  else
    echo "❌ Failed to create virtual environment." >&2
    exit 1
  fi
else
  echo "ℹ️ Virtual environment already exists at '$venv'."
fi

# Activate the virtual environment
if [ -f "$venv/bin/activate" ]; then
  echo "🚀 Activating virtual environment..."
  . "$venv/bin/activate"
  echo "✅ Environment activated."
else
  echo "❌ Activation script not found: '$venv/bin/activate'" >&2
  exit 1
fi

# Upgrade pip
echo "📦 Upgrading pip..."
pip install --upgrade pip
if [ $? -eq 0 ]; then
  echo "✅ Pip upgraded."
else
  echo "❌ Pip upgrade failed." >&2
  exit 1
fi

# Install requirements
if [ -f "$requirements_file" ]; then
  echo "📂 Installing dependencies from '$requirements_file'..."
  pip install -r "$requirements_file"
  if [ $? -eq 0 ]; then
    echo "✅ Dependencies installed successfully."
  else
    echo "❌ Dependency installation failed." >&2
    exit 1
  fi
else
  echo "⚠️ '$requirements_file' not found. Skipping dependency" \
	  "installation."
fi
if [ -f "$dev_requirements_file" ]; then
  echo "🧪 Installing dev dependencies from '$dev_requirements_file'" \
	  "..."
  pip install -r "$dev_requirements_file"
  if [ $? -eq 0 ]; then
    echo "✅ Dev dependencies installed successfully."
  else
    echo "❌ Dev dependency installation failed." >&2
    exit 1
  fi
else
  echo "⚠️ '$dev_requirements_file' not found. Skipping dev dependency" \
	  "installation."
fi

echo "🏁 Setup complete and environment is ready to use!"
