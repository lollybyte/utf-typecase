# 🤝 Contributing to utf-typecase

Thank you for considering contributing to **utf-typecase**! We welcome ideas, bug fixes, features, and thoughtful feedback.

---

## 🤖 AI-Assisted Contributions Welcome

We actively encourage the use of tools like **Copilot**, LLM-powered editors, and smart linters to improve your workflow.

Whether you're writing commit messages, optimizing code, updating docs, or exploring edge cases, AI support can help you:
- 💬 Express ideas more clearly — ideal for new contributors!
- ✨ Discover cleaner patterns and useful alternatives
- 🧠 Spot stylistic or logical inconsistencies early
- 🔍 Speed up formatting, refactoring, and test writing

> 📣 What matters most is clarity and quality — whether handwritten or co-written by AI. Just make sure any AI-generated suggestions reflect your understanding and follow the tone of this project.

If you’d like help optimizing your setup or configuring an editor to use Copilot effectively, feel free to open a discussion or issue. We’ve all leaned on smart tools before — and this project welcomes them.

---

## 📦 Pull Requests

- Please target the [`development`](https://github.com/lollybyte/utf-typecase/tree/development) branch for all changes.
- Use **descriptive branch names** that follow a common convention.
- Reference related issues in your pull request (e.g., `Closes #12`).
- Fill out the appropriate pull request template when submitting your changes.

### 🔄 Workflow for Pull Requests

If you’re not part of the core maintainer team, the typical workflow looks like this:

1. **Fork the repository**  
   Click "Fork" in the top-right corner of this repo’s GitHub page to create your own copy.

2. **Clone your fork**  
   Download your fork to your local machine:
   ```bash
   git clone https://github.com/<your-username>/utf-typecase.git
   cd utf-typecase
3. **Create a new Branch**
   ```
   git checkout -b feat/42-cool-new-feature
   ```
4. **Make changes, test, and commit** Be sure to write a clear commit message and test your code.
5. **Push to your fork** 
   ```
   git push origin feat/42-cool-new-feature
   ```
6. **Open a Pull Request** Go to your fork on GitHub and click “Compare & pull request.” Include a short summary, link relevant issues (e.g., `Closes #42`), and fill in the PR template.
   > 🛠️ All pull requests should **target the development branch**, not main.
---

## 🗃️ Branch Naming Convention

To keep our Git history organized and readable, follow this format:

```
<type>/<issue-number>-<short-description>
```

### 🏷️ Recommended Prefixes

| Prefix       | Use For…                                      | Example                                  |
|--------------|-----------------------------------------------|------------------------------------------|
| `feat/`      | New feature or enhancement                    | `feat/42-remote-grid-support`            |
| `fix/`       | Bug fix                                       | `fix/17-server-timeout-issue`            |
| `bugfix/`    | Alternative to `fix/`, sometimes preferred    | `bugfix/character-sync-glitch`           |
| `hotfix/`    | Urgent fix for deployed version               | `hotfix/token-auth-bug`                  |
| `refactor/`  | Code cleanup or reorganization                | `refactor/client-loop-structure`         |
| `test/`      | Add or update tests                           | `test/polling-coverage`                  |
| `doc/`       | Documentation changes                         | `doc/update-readme-install-guide`        |
| `chore/`     | Maintenance tasks (configs, tooling)          | `chore/update-requirements`              |
| `release/`   | Version prep or release notes                 | `release/v0.3.0`                          |
| `ci/`        | Continuous Integration changes                | `ci/add-test-workflow`                   |
| `style/`     | Formatting or style updates                   | `style/apply-black-formatting`           |
| `perf/`      | Performance improvements                      | `perf/reduce-client-latency`             |
| `revert/`    | Reverting previous changes                    | `revert/feat-keyboard-emulation`         |
| `support/`   | Setup/config/environment-related changes      | `support/nixos-firewall-docs`            |

---

## 📝 Commit Message Style Guide
Clear commit messages help us track changes, understand decisions, and maintain a readable Git history — especially when reviewing code months later.

Please follow this structured format when writing commit messages:

### 📐 Abstract Template
```
<Header: Short summary line (max ~50 characters)>

<Blank line — REQUIRED for proper formatting>

<Body: A longer explanation of what was changed and why.
Wrap each line at ~72 characters. Focus on context, not
just mechanics. Mention trade-offs, rationale, etc.>

<Blank line — optional, if referencing issues or PRs>

<References: Related issue or pull request (e.g. Closes #42)>

```
### ✅ Practical Example
```
feat: add QR code generation to server interface

This adds optional QR code rendering on the client view
using the `qrcode` package. It encodes the server’s IP
and port so remote devices can easily scan and connect.

Also refactors the server startup script to include a
flag for `--qrcode` activation.

Closes #12

```

### 💡 Tips

- 💬 If you're unsure about phrasing or clarity, it's recommended to let **Copilot** or another AI reviewer help you improve the message — it only takes a moment and often sharpens the impact.
- ✏️ Use the **imperative mood** in the summary line: “Add,” “Fix,” “Refactor” — this keeps messages action-focused and consistent with Git conventions.
- 📏 Keep the header under ~50 characters for clean log output
- 🧠 Use the body to explain _why_ the change matters, not just what changed
- 🔗 Reference issues with `Closes #XX`, `Related to #YY`, etc.

### 🔗 Reference Keywords for Commit Messages

Use these keywords in your commit footer to link commits to issues and pull requests. GitHub automatically parses them and updates the linked issue accordingly:

| Keyword      | Behavior                            | Example              |
|--------------|-------------------------------------|----------------------|
| `Closes #1`  | Closes the linked issue on merge    | `Closes #42`         |
| `Fixes #2`   | Same as `Closes` — closes issue     | `Fixes #17`          |
| `Resolves #3`| Same as `Closes`, semantic variant  | `Resolves #3`        |
| `Related to #4` | Links without closing             | `Related to #88`     |
| `See #5`     | Informal mention, doesn’t auto-link | `See #12`            |
| `Partially fixes #6` | Partial progress on issue   | `Partially fixes #7` |

📌 Place references at the end of the commit message body. Multiple references can be added — each on its own line for clarity.

---

## 🧪 Testing and Standards

- Make sure your code works across supported platforms (Linux, Windows, macOS).
- Add or update tests where applicable.
- Keep formatting consistent with the rest of the codebase.

You’re welcome to include screenshots, demos, or terminal output in your pull request if it helps convey functionality or behavior.

---

Thanks for being part of utf-typecase's journey 🚀

## 💻 Developer Installation

To set up a local development environment for `utf-typecase`, follow these steps:

```bash
git clone https://github.com/lollybyte/utf-typecase.git
cd utf-typecase
source setup.sh
```

Only **Python 3** is required globally.

All runtime dependencies are listed in `requirements.txt`.  
Development tools (formatters, linters, test suite) are included in `requirements-dev.txt`.

👉 Run `source setup.sh` to install everything inside a dedicated virtual environment.

> 🛠️ Most environment setup commands are defined in `shell.nix`, making it easier for non-Nix users to understand the development steps. You can inspect that file to see which tools, dependencies, and configuration commands are automatically provided in a Nix shell — and manually replicate them in other environments if needed.

> 🔓 Keep in mind that **port configuration is not automatic**: opening network ports requires manual steps appropriate to your operating system. Refer to the instructions for Windows, Linux, or macOS to open and close ports as needed.