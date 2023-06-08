#!/usr/bin/bash

stow_this() {
	cd "$HOME/.dotfiles" || exit 1
	stow "$1"
	cd "$HOME" || exit 1
}

if ! [ -L "$HOME/.bashrc" ]; then
	echo "stowing bashrc"
	mv "$HOME/.bashrc" "$HOME/.bashr.bac"
	stow_this bash
fi

# If the asdf directory does not exist assume that its not installed
if ! [ -d "$HOME/.asdf" ]; then
	echo "setting up asdf"
	stow_this asdf
	git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.11.3

	asdf plugin add ruby https://github.com/asdf-vm/asdf-ruby.git
	asdf plugin-add python
	asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
	asdf plugin-add poetry https://github.com/asdf-community/asdf-poetry.git
	asdf plugin add lazygit
	asdf plugin-add golang https://github.com/kennyp/asdf-golang.git
	asdf plugin add zoxide https://github.com/nyrst/asdf-zoxide.git
	# Stow the asdf files
	# Install what is in .tools-versions
	asdf install
fi

if ! [ -L "$HOME/.tmux.conf" ]; then
	echo "stowing tmux and scripts"
	stow_this tmux
	stow_this bin
fi

if ! [ -L "$HOME/.config/nvim" ]; then
	echo "stowing neovim"
	stow_this nvim
fi

if ! [ -L "$HOME/.gitconfig" ]; then
	echo "stowing git configuraiton"
	stow_this git
	stow_this gitlab
fi

if ! [ -L "$HOME/.ssh" ]; then
	echo "stowing ssh configuration"
	stow_this ssh
fi
