#!/usr/bin/bash

# Creater directories
mkdir -p ~/gitlab
mkdir -p ~/personal

sudo apt update
sudo apt upgrade -y

sudo apt install -y git stow coreutils ripgrep luarocks postgresql postgresql-contrib libpq-dev \
  libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm \
  libncurses5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev build-essential

# Install golang

# Install asdf

# Install rust
source "install/rust.sh"
source "scripts/.local/scripts/rust-tools.sh"

# Install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install homebrew applications
brew install fzf
brew install lazygit
brew install fzf
brew install asdf
brew install tmux

source "install/core.sh"
