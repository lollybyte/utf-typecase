#!/bin/sh
# test.sh — Developer script for testing and code quality
#
# Description:
#   This script runs unit tests, coverage analysis, and code quality checks
#   for the utf-typecase Python project. It's intended for developers working
#   on or contributing to the codebase.
#
# Usage:
#   Run this script from the project root:
#     ./test.sh
#
# Requirements:
#   - Python environment with pytest, pytest-cov, black, mypy, flake8 installed
#   - The utf_typecase module and tests should be correctly configured

app="src/utf_typecase"
tests="tests"

# === Licensecheck ===
# Ignoring python3-xlib because it is only used transitively via pyautogui (BSD-licensed) and mouseinfo (GPLv3).
# The library itself is legacy (GPLv2) and unmaintained, but its usage is wrapped by GPLv3 code,
# making the overall project compatible with GPLv3 under mouseinfo's licensing terms.
# pip show python3-xlib mouseinfo pyautogui 
echo ""
echo "🧠 Running Licensecheck..."
licensecheck --license gplv3 --show-only-failing --ignore-packages  python3-xlib
echo ""

# === Run Tests and Coverage ===
echo ""
echo "🔍 Running unit tests and coverage..."
pytest --cov="$app" --cov-report=term-missing
echo ""

# === Format Code ===
echo "🎨 Formatting code with Black..."
black "$app" "$tests"
echo ""

# === Type Check ===
echo "🧷 Checking types with MyPy..."
mypy "$app"
echo ""

# === Linting ===
echo "🕵️ Linting code with Flake8..."
flake8 "$app" "$tests"
echo ""

# === Done ===
echo "✅ All checks complete."
