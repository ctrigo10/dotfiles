#!/usr/bin/env bash

set -e

source "$(dirname "$0")/../scripts/utils.sh"

print_header "Configuring Git"

if command_exists git; then
    print_success "Git is installed"
else
    print_error "Git is not installed"
    exit 1
fi

print_success "Git configuration managed through dotfiles."