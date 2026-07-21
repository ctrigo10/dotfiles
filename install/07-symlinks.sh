#!/usr/bin/env bash

set -e

source "$(dirname "$0")/../scripts/utils.sh"

DOTFILES="$(cd "$(dirname "$0")/.." && pwd)"
SYMLINKS_FILE="$DOTFILES/config/symlinks.conf"

print_header "Creating symbolic links"

if [[ ! -f "$SYMLINKS_FILE" ]]; then
    print_error "Symlinks file not found: $SYMLINKS_FILE"
    exit 1
fi

while IFS='|' read -r source target; do

    # Ignorar comentarios y líneas vacías
    [[ -z "$source" ]] && continue
    [[ "$source" =~ ^# ]] && continue

    source="$DOTFILES/$source"
    target="${target/#\~/$HOME}"

    backup_file "$target"

    create_symlink "$source" "$target"

done < "$SYMLINKS_FILE"

echo
print_success "All symbolic links created."