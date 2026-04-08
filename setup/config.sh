#!/bin/bash
set -euo pipefail

DOTFILES_DIR="${DOTFILES_DIR:-$HOME/.dotfiles}"

ensure_symlink() {
  local target="$1"
  local link="$2"

  if [ -e "$link" ] && [ ! -L "$link" ]; then
    echo "Refusing to replace non-symlink path: $link" >&2
    exit 1
  fi

  mkdir -p "$(dirname "$link")"
  ln -sfn "$target" "$link"
}

# Ghostty
ensure_symlink "$DOTFILES_DIR/.config/ghostty/config" \
  "$HOME/Library/Application Support/com.mitchellh.ghostty/config"

echo "Config symlinks created."
