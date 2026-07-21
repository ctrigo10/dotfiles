#!/usr/bin/env bash

set -e

echo "🚀 Starting bootstrap..."

for script in install/*.sh; do
    echo ""
    echo "▶ Running $(basename "$script")"
    bash "$script"
done

echo ""
echo "🎉 Bootstrap completed successfully!"
