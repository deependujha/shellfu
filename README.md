# 🐚 shellfu

⚡ A collection of **useful** `shell functions` and `aliases` to level up your command-line workflow. 🔥

![shellfu](./assets/shellfu-readme.png)

---

## 🚀 Quickstart

Clone the repo:

```bash
mkdir ~/externals
git clone https://github.com/deependujha/shellfu.git ~/externals/shellfu \
&& cd ~/externals/shellfu \
&& make setup \
&& cd - # Return to the previous directory
```

---

## Configuration

> don't need to do this if you used `make setup`

Add this to your `~/.bashrc` or `~/.zshrc`:

```bash
# Load all shellfu scripts automatically
SCRIPT_DIR="$HOME/externals/shellfu/scripts"

if [ -d "$SCRIPT_DIR" ]; then
  for script in "$SCRIPT_DIR"/*.sh; do
    [ -f "$script" ] && source "$script"
  done
  unset script
else
  echo "⚠️  shellfu: '$SCRIPT_DIR' not found."
fi
```

---

## 🧠 What is shellfu?

`shellfu` is a collection of tiny, helpful shell scripts you can load into your terminal session to:

* ⚡ Boost your productivity with custom commands
* 🧰 Organize your personal shell tools
* ✨ Keep your config clean, modular, and version-controlled

It’s **plug-and-play**, minimal, and easy to extend:

* Just drop `.sh` files into `~/.shellfu/scripts/`
* They'll be auto-loaded every time you start a shell
* No extra dependencies, just bash/zsh

---

## 📁 Script organization

Scripts are grouped by purpose:

```txt
scripts/
├── git-utils.sh       # Shortcuts & helpers for Git
├── sys-monitor.sh     # Disk/mem usage helpers
├── dev-env.sh         # Functions for dev workflows
└── custom.sh          # Your own stuff goes here
```

---

## 🤝 Contributing

Pull requests welcome — add your favorite shell tricks or polish what’s here. Keep scripts POSIX-compliant if possible, and comment your magic.

---

## 📜 License

[MIT](./LICENSE) © [Deependu Jha](https://github.com/deependujha)

---

## 💬 Final thoughts

This utility is for people who treat the terminal like home. Make it yours.
