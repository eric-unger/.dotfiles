#!/usr/bin/bash

# Creater directories
mkdir -p ~/gitlab
mkdir -p ~/personal

sudo apt update
sudo apt upgrade -y

sudo apt install -y git stow coreutils ripgrep luarocks postgresql postgresql-contrib libpq-dev \
  libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm \
  libncurses5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev fzf fd-find

# Install golang

# Install asdf

# Install rust
source "install/rust.sh"
source "scripts/.local/scripts/rust-tools.sh"

# source "install/core.sh"

# Install zsh plugin manager
# bash -c "$(curl --fail --show-error --silent --location https://raw.githubusercontent.com/zdharma-continuum/zinit/HEAD/scripts/install.sh)"
# ln -s /usr/bin/batcat ~/.local/bin/bat

# git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
# ~/.fzf/install
