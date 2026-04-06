#!/bin/bash
set -euo pipefail

# Install Homebrew if not present
if ! command -v brew &>/dev/null; then
  echo "Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Taps
brew tap colonyops/tap

# Formulae
brew install \
  git \
  go \
  node \
  nvm \
  typescript \
  gh

# Casks
brew install --cask \
  1password \
  claude-code \
  codex \
  firefox \
  firefox@developer-edition \
  ghostty \
  google-chrome \
  google-cloud-sdk \
  colonyops/tap/hive \
  obsidian \
  orbstack \
  slack \
  things \
  zed

echo "Brew setup complete."
