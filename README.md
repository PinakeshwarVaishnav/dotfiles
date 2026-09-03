# dotfiles

Personal Linux configuration files managed with [GNU Stow](https://www.gnu.org/software/stow/).

## What's Included

* **Shells:** Bash (`.bashrc`), Zsh (`.zshrc`), Fish (`.config/fish`)
* **Terminal & Multiplexer:** Ghostty (`.config/ghostty`), Tmux (`.tmux.conf`)
* **Editor:** Neovim (`.config/nvim`), VS Code (`.config/Code`)
* **Git:** Config (`.gitconfig`), Global ignore (`.gitignore_global`), Lazygit (`.config/lazygit`)

## Structure

The repository mirrors `$HOME` directly:

```text
.
├── .bashrc
├── .zshrc
├── .gitconfig
├── .gitignore_global
├── .tmux.conf
└── .config/
    ├── Code/
    ├── fish/
    ├── ghostty/
    ├── lazygit/
    └── nvim/
```

## Setup & Installation

### 1. Install Dependencies (Fedora)

```bash
sudo dnf install stow git
```

### 2. Clone Repository

```bash
git clone <REPO_URL> ~/repos/dotfiles
cd ~/repos/dotfiles
```

### 3. Handle Conflicting Defaults (First Time Only)

Fresh Linux installations often create default placeholder files (like `.bashrc`). Move any existing non-symlink files to a backup folder before running Stow:

```bash
mkdir -p ~/.dotfiles-backup
[ ! -L ~/.bashrc ] && [ -f ~/.bashrc ] && mv ~/.bashrc ~/.dotfiles-backup/
[ ! -L ~/.zshrc ] && [ -f ~/.zshrc ] && mv ~/.zshrc ~/.dotfiles-backup/
```

### 4. Apply Configurations

Run a dry run first to preview the symlinks:

```bash
stow -nv -t ~ .
```

If the preview looks clean, apply the symlinks:

```bash
stow -v -t ~ .
```

## Daily Workflow

Because Stow creates symlinks pointing directly into this repo, any edits made inside `~/.config/...` or `~/.bashrc` are immediately reflected here.

To commit and push updates:

```bash
cd ~/repos/dotfiles
git add .
git commit -m "update config"
git push
```

## Uninstall / Unlink

To safely remove all symlinks without deleting any files from the repository:

```bash
cd ~/repos/dotfiles
stow -D -v -t ~ .
