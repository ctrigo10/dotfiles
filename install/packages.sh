#!/usr/bin/env bash

set -e

echo "📦 Installing packages..."

sudo apt update

sudo apt install -y \
    curl \
    wget \
    git \
    tmux \
    fzf \
    zoxide \
    eza \
    ripgrep \
    fd-find \
    unzip \
    build-essential \
    jq \
    tree \
    btop
