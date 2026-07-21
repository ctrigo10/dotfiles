#!/usr/bin/env bash

set -e

source "$(dirname "$0")/../scripts/utils.sh"

print_header "Installing JetBrainsMono Nerd Font"

FONT_DIR="$HOME/.local/share/fonts"

if fc-list | grep -qi "JetBrainsMono Nerd Font"; then
    print_success "JetBrainsMono Nerd Font is already installed."
    exit 0
fi

TMP_DIR=$(mktemp -d)

curl -L \
https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.zip \
-o "$TMP_DIR/JetBrainsMono.zip"

mkdir -p "$FONT_DIR"

unzip -o "$TMP_DIR/JetBrainsMono.zip" -d "$FONT_DIR"

fc-cache -fv >/dev/null

rm -rf "$TMP_DIR"

print_success "JetBrainsMono Nerd Font installed."