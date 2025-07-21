# utf-typecase

# 🌠 Vision: A Practical UTF-Typecase

**utf-typecase** is a utility for developers and typographers who regularly insert specific Unicode characters into text — without relying on clipboard juggling or obscure keyboard shortcuts.

It acts like a virtual typecase:  
- You open a web interface (on a tablet, phone, or second screen).  
- You set up a grid of your most-used UTF characters.  
- Tap a button — the character appears on your main machine.

No revolutionary input method — just a streamlined way to “type” your go-to symbols when everything’s set up correctly.

🚧 This project is under active development. We’re just getting started — and there’s lots of room to grow.

---

## ✨ Future Features

- Customizable symbol grid hosted by the server
- Remote character selection via web browser
- Client polls the server and simulates keystrokes to insert characters
- Works across platforms with Python 3.8+ and modern browsers

---

## 📦 Installation

```bash
pip install utf-typecase
```

---

## Run Application
```
# Run both client and server
utf-typecase --run-server --run-client

# Run server only
utf-typecase --run-server --port 8080

# Run client only
utf-typecase --run-client --host http://192.168.1.50:5000 --token mysecret
```

## 🔢 Alpha Version Summary

| Version   | Highlights                                                                 |
|-----------|------------------------------------------------------------------------------|
| **0.1.0** | Initial placeholder to reserve the `utf-typecase` name on PyPI. No features yet. |
| **0.2.0** | CLI application implemented with a proof-of-concept workflow and minimal usable interface. |

---

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

