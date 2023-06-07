#!/usr/bin/bash

echo "stowing awesome, kitty and rofi"
cd $HOME/.dotfiles

stow awesome
stow kitty
stow rofi

cd $HOME
