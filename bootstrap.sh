#!/usr/bin/bash

# Creater directories
mkdir -p ~/gitlab
mkdir -p ~/personal

sudo apt update
sudo apt upgrade -y

sudo apt install -y git stow coreutils ripgrep luarocks postgresql postgresql-contrib libpq-dev \
  libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm \
  libncurses5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev build-essential

cd "$HOME/.dotfiles" || exit 1
echo "stowing bashrc"
mv "$HOME/.bashrc" "$HOME/.bashr.bac"
stow bash
stow tmux
stow scripts
stow asdf
stow git
stow gitlab
stow nvim
stow ssh

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
brew install --cask gg
brew install zig

# Add asdf plugins
asdf plugin add ruby https://github.com/asdf-vm/asdf-ruby.git
asdf plugin add python
asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
# Install what is in .tools-versions
asdf install

# Install tmux plugin manager tpm
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
echo "TMUX: Press prefix + I to install the plugins"
