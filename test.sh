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
echo "🧠 Checking types with MyPy..."
mypy "$app"
echo ""

# === Linting ===
echo "🕵️ Linting code with Flake8..."
flake8 "$app" "$tests"
echo ""

# === Done ===
echo "✅ All checks complete."
