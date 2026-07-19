#!/usr/bin/env bash

set -e

echo "🚀 Starting bootstrap..."

./install/packages.sh
./install/git.sh
./install/node.sh
./install/fonts.sh
./install/ghostty.sh
./install/tmux.sh
./install/tmuxinator.sh
./install/symlinks.sh
./install/final.sh

echo ""
echo "🎉 Bootstrap completed successfully!"
