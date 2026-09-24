#!/usr/bin/env bash

set -e

source "$(dirname "${BASH_SOURCE[0]}")/../scripts/utils.sh"

print_header "Installing Oh My Zsh & Plugins"

ZSH_DIR="$HOME/.oh-my-zsh"
ZSH_CUSTOM="${ZSH_CUSTOM:-$ZSH_DIR/custom}"

if [[ ! -d "$ZSH_DIR" ]]; then
    print_header "Cloning Oh My Zsh"
    git clone https://github.com/ohmyzsh/ohmyzsh.git "$ZSH_DIR"
    print_success "Oh My Zsh installed."
else
    print_success "Oh My Zsh is already installed."
fi

# zsh-autosuggestions
if [[ ! -d "$ZSH_CUSTOM/plugins/zsh-autosuggestions" ]]; then
    print_header "Installing zsh-autosuggestions"
    git clone https://github.com/zsh-users/zsh-autosuggestions "$ZSH_CUSTOM/plugins/zsh-autosuggestions"
    print_success "zsh-autosuggestions installed."
fi

# zsh-syntax-highlighting
if [[ ! -d "$ZSH_CUSTOM/plugins/zsh-syntax-highlighting" ]]; then
    print_header "Installing zsh-syntax-highlighting"
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$ZSH_CUSTOM/plugins/zsh-syntax-highlighting"
    print_success "zsh-syntax-highlighting installed."
fi

# zsh-nvm
if [[ ! -d "$ZSH_CUSTOM/plugins/zsh-nvm" ]]; then
    print_header "Installing zsh-nvm"
    git clone https://github.com/lukechilds/zsh-nvm "$ZSH_CUSTOM/plugins/zsh-nvm"
    print_success "zsh-nvm installed."
fi

print_success "Oh My Zsh setup complete."
