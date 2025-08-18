#!/bin/bash

set -e

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$HOME"

packages=("fish" "zed" "git" "nvim")

for package in "${packages[@]}"; do
    if [[ "$package" == "git" ]]; then
        if [[ "$OSTYPE" == "darwin"* ]]; then
            cp "$DOTFILES_DIR/git/.gitconfig.macos" "$DOTFILES_DIR/git/.gitconfig"
            cp "$DOTFILES_DIR/git/.ssh/config.macos" "$DOTFILES_DIR/git/.ssh/config"
        else
            cp "$DOTFILES_DIR/git/.gitconfig.linux" "$DOTFILES_DIR/git/.gitconfig"
            cp "$DOTFILES_DIR/git/.ssh/config.linux" "$DOTFILES_DIR/git/.ssh/config"
        fi
    fi    
    stow -d "$DOTFILES_DIR" -t "$HOME" "$package"
done
