# 🌸 Dotfiles - NixOS + Hyprland

![NixOS](https://img.shields.io/badge/NixOS-5277C3?logo=nixos&logoColor=white)
![Hyprland](https://img.shields.io/badge/Hyprland-black?logo=wayland&logoColor=white)
![Home Manager](https://img.shields.io/badge/Home%20Manager-blue?logo=nix&logoColor=white)
![Flakes](https://img.shields.io/badge/Flakes-5E81AC?logo=snowflake&logoColor=white)
![Zsh](https://img.shields.io/badge/Shell-Zsh-4EAA25?logo=gnu-bash&logoColor=white)

My personal **NixOS dotfiles**, powered by **flakes** and **home-manager**, running on **Hyprland**.  
A modular, fast and productivity-oriented setup.  

---

## ✨ Main Components

- **OS**: [NixOS](https://nixos.org/) (flakes + home-manager)  
- **WM/Compositor**: [Hyprland](https://hyprland.org/)  
- **Bar**: [Waybar](https://github.com/Alexays/Waybar)  
- **Terminal**: [Kitty](https://sw.kovidgoyal.net/kitty/)  
- **Editor**: [Neovim](https://neovim.io/)  
- **Shell**: [Zsh](https://www.zsh.org/)  

---

## 📂 Repository Structure

```bash
.
├── configuration.nix
├── flake.{nix,lock}
├── hardware-configuration.nix
├── modules
│   ├── conf/              # Core system configuration (boot, network, nix, etc.)
│   ├── fonts/             # Fonts setup
│   ├── kernel/            # Kernel patches and config
│   ├── sistema/           # System modules (Hyprland, packages, audio, Steam)
│   ├── user/              # User-specific configs
│   └── vaapi/             # GPU acceleration
├── nixpkgs
│   ├── home.nix           # Home Manager entrypoint
│   └── modules/           # User applications and theming
│       ├── btop/
│       ├── fastfetch/
│       ├── git.nix
│       ├── gtk.nix
│       ├── kitty/
│       ├── rofi.nix
│       ├── wms/           # Hyprland ecosystem (idle, lock, waybar, swaync, tofi)
│       └── zsh.nix
└── README.md

## 🚀 Installation

Clone the repository:

```bash
git clone https://github.com/<your-username>/<repo>.git ~/.dotfiles
cd ~/.dotfiles
