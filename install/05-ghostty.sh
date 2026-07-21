#!/usr/bin/env bash

set -e

source "$(dirname "$0")/../scripts/utils.sh"

print_header "Installing Ghostty"

if command_exists ghostty; then
    print_success "Ghostty is already installed."
    exit 0
fi

require_sudo

sudo apt install -y ghostty

print_success "Ghostty installed successfully."