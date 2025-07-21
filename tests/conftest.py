# tests/conftest.py
import sys
import os
import pytest
from click.testing import CliRunner


@pytest.fixture
def runner():
    return CliRunner()


SRC_PATH = os.path.abspath(os.path.join(os.path.dirname(__file__), "..", "src"))
sys.path.insert(0, SRC_PATH)
