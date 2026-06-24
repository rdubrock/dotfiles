#!/bin/bash
set -euo pipefail

# On Apple Silicon, refuse to run under Rosetta — it would install the Intel
# Homebrew into /usr/local instead of the native /opt/homebrew.
if [ "$(uname -p)" = "arm" ] && [ "$(uname -m)" = "x86_64" ]; then
  echo "Running under Rosetta on Apple Silicon. Re-run in a native arm64 shell." >&2
  exit 1
fi

# Install Homebrew if not present
if ! command -v brew &>/dev/null; then
  echo "Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Taps
brew tap colonyops/tap
brew tap grafana/grafana

# Formulae
brew install \
  git \
  go \
  node \
  nvm \
  tmux \
  typescript \
  gh \
  grafana/grafana/gcx

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
  googleworkspace-cli \
  colonyops/tap/hive \
  obsidian \
  orbstack \
  slack \
  things \
  vivaldi \
  zed

echo "Brew setup complete."
