# cli.py
import click
from click_completion import init
from click_pwsh import support_pwsh_shell_completion

# Enable shell completion
init()
support_pwsh_shell_completion()


@click.command()
@click.argument("text")
@click.option(
    "--style",
    type=click.Choice(["upper", "lower", "title"], case_sensitive=False),
    default="title",
    help="Case style to apply",
)
@click.option(
    "--install-completion", is_flag=True, help="Install shell completion for your shell"
)
def main(text, style, install_completion):
    """Convert TEXT to a specified Unicode case style."""

    if install_completion:
        _install_completion()
        return

    styles = {"upper": text.upper(), "lower": text.lower(), "title": text.title()}
    click.echo(styles.get(style.lower(), text.title()))


def _install_completion():
    import platform

    os_name = platform.system()

    click.echo("🔧 Installing shell completion...")

    if os_name == "Windows":
        click.echo("👉 Run this in PowerShell:")
        click.echo("python -m click_pwsh install utf-typecase Complete")
    else:
        click.echo("👉 Run this in your shell (Bash, Zsh, etc):")
        click.echo('eval "$(_UTF_TYPECASE_COMPLETE=bash_source utf-typecase)"')
        click.echo("Add it to your shell config file to persist.")
