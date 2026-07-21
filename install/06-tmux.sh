#!/usr/bin/env bash

set -e

source "$(dirname "$0")/../scripts/utils.sh"

print_header "Checking tmux"

if command_exists tmux; then
    print_success "tmux $(tmux -V)"
else
    print_error "tmux is not installed"
fi