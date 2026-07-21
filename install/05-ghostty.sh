#!/usr/bin/env bash

set -e

source "$(dirname "$0")/../scripts/utils.sh"

print_header "Checking Ghostty"

if command_exists ghostty; then
    print_success "Ghostty is installed"
else
    print_warning "Ghostty is not installed."
    print_warning "Install it manually or add support later."
fi