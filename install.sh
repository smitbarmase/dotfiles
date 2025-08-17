#!/bin/bash

set -e

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$HOME"

packages=("fish" "zed" "git" "nvim")

backup_if_exists() {
    local path="$1"
    if [[ -e "$path" && ! -L "$path" ]]; then
        local backup_path="${path}.backup.$(date +%Y%m%d_%H%M%S)"
        mv "$path" "$backup_path"
    fi
}

for package in "${packages[@]}"; do
    case $package in
        "fish")
            backup_if_exists "$HOME/.config/fish/config.fish"
            backup_if_exists "$HOME/.config/fish/functions/ai.fish"
            ;;
        "zed")
            backup_if_exists "$HOME/.config/zed/settings.json"
            backup_if_exists "$HOME/.config/zed/keymap.json"
            ;;
        "git")
            backup_if_exists "$HOME/.gitconfig"
            backup_if_exists "$HOME/.gitignore_global"
            backup_if_exists "$HOME/.ssh/allowed_signers"
            backup_if_exists "$HOME/.ssh/config"
            ;;
        "nvim")
            backup_if_exists "$HOME/.config/nvim/init.lua"
            backup_if_exists "$HOME/.config/nvim/lazy-lock.json"
            ;;
    esac
    
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
