#!/usr/bin/env bash

set -e

source "$(dirname "$0")/../scripts/utils.sh"

print_header "Checking Nerd Fonts"

FONT_DIR="$HOME/.local/share/fonts"

if [[ -d "$FONT_DIR" ]]; then
    print_success "Fonts directory exists"
else
    print_warning "Fonts directory not found"
fi