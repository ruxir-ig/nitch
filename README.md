<div align="center">

> **Fork Notice:** This is a maintained fork of the original [nitch by unxsh](https://github.com/unxsh/nitch). The original project appears unmaintained, so this fork continues development with bug fixes and new features.

# `NiTch`

### ⚡ Incredibly fast system fetch written in Nim

```
   _  ___ ______    __
  / |/ (_)_  __/___/ /
 /    / / / / / __/ _ \
/_/|_/_/ /_/  \__/_//_/
```

[![License](https://img.shields.io/github/license/ruxir-ig/nitch?style=for-the-badge)](LICENSE)
[![Release](https://img.shields.io/github/v/release/ruxir-ig/nitch?style=for-the-badge)](https://github.com/ruxir-ig/nitch/releases)
[![Stars](https://img.shields.io/github/stars/ruxir-ig/nitch?style=for-the-badge)](https://github.com/ruxir-ig/nitch/stargazers)

</div>

---

## Features

- **Blazing Fast** — Executes in ~1.7ms
- **Zero Dependencies** — Pure Nim, no external libraries
- **Nerd Font Support** — Beautiful icons (with non-Nerd Font fallback)
- **Lightweight** — ~150KB binary
- **Multi-Distro** — Supports Arch, CachyOS, Debian, Ubuntu, Fedora, and more

## Preview (without logo)

**Nerd Font version:**
```
  ╭───────────╮
  │   user   │ ruxir
  │   hname  │ odysseus
  │ 󰻀  distro │ CachyOS
  │ 󰌢  kernel │ 6.18.2-2-cachyos
  │   uptime │ 2h 43m
  │   shell  │ zsh
  │ 󰏖  pkgs   │ 1536
  │ 󰍛  memory │ 8512 | 15708 MiB
  ├───────────┤
  │ 󰏘  colors │        
  ╰───────────╯
```

**Non-Nerd Font version:**
```
  ╭───────────╮
  │ >  user   │ ruxir
  │ >  hname  │ odysseus
  │ >  distro │ CachyOS
  │ >  kernel │ 6.18.2-2-cachyos
  │ >  uptime │ 1h 30m
  │ >  shell  │ zsh
  │ >  pkgs   │ 1536
  │ >  memory │ 4096 | 16384 MiB
  ├───────────┤
  │ >  colors │ # # # # # # # #
  ╰───────────╯
```

---

## Installation

### Quick Install (Binary)

```bash
wget https://raw.githubusercontent.com/ruxir-ig/nitch/main/setup.sh && sh setup.sh
```

The installer will ask if you want Nerd Font icons or not.

### Arch Linux / CachyOS (PKGBUILD)

```bash
git clone https://github.com/ruxir-ig/nitch.git
cd nitch
makepkg -si
```

Choose between:
- `nitch` — Nerd Font version
- `nitch-nonerd` — Standard font version

### Build from Source

```bash
# Install Nim
# Arch: sudo pacman -S nim
# Ubuntu: sudo apt install nim

# Clone and build
git clone https://github.com/ruxir-ig/nitch.git
cd nitch
nimble build -d:release

# For non-Nerd Font version
nim c -d:release -o:nitchNoNerd src/nitchNoNerd.nim
```

---

## Usage

```bash
nitch              # Display system info
nitch -a           # Display without ASCII art
nitch --no-ascii   # Same as above
nitch -h           # Show help
nitch -v           # Show version
```

---

## Configuration

nitch is configured by editing the source code directly.

**Icon customization:** Edit `src/funcs/drawing.nim`

```nim
const  # icons before categories
  userIcon   = " "   # Nerd Font icon
  # or
  userIcon   = "|>"  # Plain text fallback
```

**Supported Distros:**
- Arch Linux, CachyOS, Manjaro
- Debian, Ubuntu, Linux Mint
- Fedora, CentOS, RHEL
- openSUSE, Gentoo, Slackware
- Pop!_OS, Zorin OS
- Void Linux, NixOS
- And more...

---

## Project Structure

```
nitch/
├── src/
│   ├── nitch.nim           # Main entry (Nerd Font)
│   ├── nitchNoNerd.nim     # Main entry (Non-Nerd Font)
│   ├── assets/
│   │   ├── assets.nim      # Help text, version
│   │   └── logos.nim       # ASCII logos
│   ├── flags/
│   │   └── argParser.nim   # CLI argument parser
│   ├── funcs/
│   │   ├── drawing.nim     # Output rendering (Nerd)
│   │   ├── drawingNoNerd.nim
│   │   ├── perform.nim     # Action handlers
│   │   └── packages/       # Package managers
│   └── nitches/            # System info fetchers
├── PKGBUILD                # Arch Linux package
├── setup.sh                # Quick installer
└── nitch.nimble            # Nim package config
```

---

## Contributing

Contributions are welcome! Feel free to:
- Report bugs
- Suggest new features
- Add support for more distros
- Submit pull requests

---

## License

MIT License — see [LICENSE](LICENSE)

---

## Credits

- Original project by [unxsh](https://github.com/unxsh/nitch)
- Inspired by [pfetch](https://github.com/dylanaraps/pfetch), [neofetch](https://github.com/dylanaraps/neofetch), [paleofetch](https://github.com/ss7m/paleofetch)
