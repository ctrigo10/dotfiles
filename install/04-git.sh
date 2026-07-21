#!/usr/bin/env bash

set -e

source "$(dirname "$0")/../scripts/utils.sh"

print_header "Checking Git"

if ! command_exists git; then
    print_error "Git is not installed."
    exit 1
fi

print_success "Git $(git --version)"

if [[ ! -d "$HOME/.ssh" ]]; then
    print_warning "~/.ssh does not exist."
    print_warning "Remember to create your SSH keys."
fi

print_success "Git configuration is managed through dotfiles."