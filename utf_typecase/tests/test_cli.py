# tests/test_cli.py
from click.testing import CliRunner
from utf_typecase.cli.main import main


def test_upper():
    runner = CliRunner()
    result = runner.invoke(main, ["hello world", "--style", "upper"])
    assert result.exit_code == 0
    assert result.output.strip() == "HELLO WORLD"


def test_title():
    runner = CliRunner()
    result = runner.invoke(main, ["hello world"])
    assert result.exit_code == 0
    assert result.output.strip() == "Hello World"
