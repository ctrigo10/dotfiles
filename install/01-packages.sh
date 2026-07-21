#!/usr/bin/env bash

set -e

source "$(dirname "$0")/../scripts/utils.sh"

PACKAGES_FILE="$(dirname "$0")/../packages/base.txt"

print_header "Installing base packages"

if [[ ! -f "$PACKAGES_FILE" ]]; then
    print_error "Packages file not found."
    exit 1
fi

mapfile -t PACKAGES < "$PACKAGES_FILE"

MISSING=()

for package in "${PACKAGES[@]}"; do

    [[ -z "$package" ]] && continue
    [[ "$package" =~ ^# ]] && continue

    if package_installed "$package"; then
        print_success "$package"
    else
        print_warning "$package"
        MISSING+=("$package")
    fi

done

if [[ ${#MISSING[@]} -eq 0 ]]; then
    echo
    print_success "All packages are already installed."
    exit 0
fi

print_header "Installing missing packages"

printf ' • %s\n' "${MISSING[@]}"

echo

require_sudo

print_header "Updating package index"

sudo apt update

print_success "Package index updated"

print_header "Installing packages"

sudo apt install -y "${MISSING[@]}"

print_success "Package installation completed."