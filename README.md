# 🚀 Dotfiles

My personal development environment setup for Ubuntu.

This repository automates the installation of my development tools, shell configuration, terminal, fonts, tmux, Git settings and symbolic links.

---

## Features

- 📦 Install base packages
- 🔤 Install JetBrainsMono Nerd Font
- 🟢 Install NVM
- 🖥 Configure Ghostty
- 🪟 Configure tmux
- 🔗 Create symbolic links
- 🐙 Multi-profile Git configuration
- 🔑 SSH configuration

---

## Repository structure

```
dotfiles/
├── bootstrap.sh
├── config/
├── docs/
├── install/
├── packages/
├── scripts/
└── README.md
```

---

## Installation

Clone the repository

```bash
git clone git@github-personal:YOUR_USER/dotfiles.git

cd dotfiles
```

Run bootstrap

```bash
./bootstrap.sh
```

---

## Git Profiles

This repository supports three Git identities.

| Profile | Service |
|----------|----------|
| Personal | GitHub |
| PowerFinancial | GitHub |
| AGETIC | GitLab |

Projects are organized like this:

```
~/Projects
│
├── personal
├── powerfinancial
└── agetic
```

Git automatically selects the correct identity.

---

## Update

```bash
git pull
```

---

## Add a new module

Create a new installer.

Example:

```
install/08-docker.sh
```

The bootstrap will execute it automatically.

---

## License

MIT