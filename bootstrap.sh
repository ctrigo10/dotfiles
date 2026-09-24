#!/usr/bin/env bash

set -e

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$DOTFILES_DIR"

echo "🚀 Starting bootstrap from $DOTFILES_DIR..."

for script in install/*.sh; do
    echo ""
    echo "▶ Running $(basename "$script")"
    bash "$script"
done

echo ""
echo "🎉 Bootstrap completed successfully!"

