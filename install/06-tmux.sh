#!/usr/bin/env bash

set -e

source "$(dirname "$0")/../scripts/utils.sh"

print_header "Installing tmux"

if ! command_exists tmux; then
    require_sudo
    sudo apt install -y tmux
    print_success "tmux installed."
else
    print_success "tmux is already installed."
fi

if [[ ! -d "$HOME/.tmux/plugins/tpm" ]]; then
    print_header "Installing TPM"

    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

    print_success "TPM installed."
else
    print_success "TPM already installed."
fi