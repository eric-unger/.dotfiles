#!/usr/bin/env bash

if [[ $# -eq 1 ]]; then
	selected=$1
else
	selected=$(tmuxinator list | fzf)
fi

if [[ -z $selected ]]; then
	exit 0
fi

tmuxinator $selected
