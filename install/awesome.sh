#!/usr/bin/bash

echo "stowing awesome, kitty and rofi"
cd "$HOME/.dotfiles" || exit 1

stow awesome
stow kitty
stow rofi

cd "$HOME" || exit 1
