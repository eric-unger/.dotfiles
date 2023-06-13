#!/usr/bin/bash

# Creater directories
mkdir -p ~/gitlab
mkdir -p ~/personal

sudo apt update
sudo apt upgrade -y

sudo apt install -y git stow coreutils curl ripgrep luarocks postgresql postgresql-contrib libpq-dev
source "$HOME/.dotfiles/install/core.sh"
