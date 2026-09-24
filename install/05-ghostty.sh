#!/usr/bin/env bash

set -e

source "$(dirname "$0")/../scripts/utils.sh"

print_header "Installing Ghostty"

if command_exists ghostty; then
    print_success "Ghostty is already installed."
    exit 0
fi

require_sudo

if sudo apt install -y ghostty 2>/dev/null; then
    print_success "Ghostty installed successfully."
else
    print_warning "Ghostty package not found in standard apt repositories."
    print_warning "Please install Ghostty manually or add its official PPA/repository."
fi