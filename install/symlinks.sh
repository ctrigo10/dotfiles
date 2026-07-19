#!/usr/bin/env bash

set -e

echo "🔗 Creating symlinks..."

DOTFILES="$HOME/Projects/personal/dotfiles"

mkdir -p ~/.config/ghostty
mkdir -p ~/.config/lazygit

ln -sf "$DOTFILES/config/zsh/zshrc" ~/.zshrc
ln -sf "$DOTFILES/config/git/gitconfig" ~/.gitconfig
ln -sf "$DOTFILES/config/tmux/tmux.conf" ~/.tmux.conf

ln -sf "$DOTFILES/config/starship/starship.toml" ~/.config/starship.toml
ln -sf "$DOTFILES/config/ghostty/config" ~/.config/ghostty/config
ln -sf "$DOTFILES/config/lazygit/config.yml" ~/.config/lazygit/config.yml
