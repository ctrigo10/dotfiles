#!/usr/bin/env bash

set -e

source "$(dirname "$0")/../scripts/utils.sh"

print_header "Installing NVM"

if [[ -d "$HOME/.nvm" ]]; then
    print_success "NVM is already installed."
    exit 0
fi

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/HEAD/install.sh | bash

print_success "NVM installed successfully."

echo
print_warning "Restart your terminal or run:"
echo
echo 'source ~/.zshrc'