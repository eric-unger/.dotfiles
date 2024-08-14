#!/usr/bin/env bash

current_session=$(tmux display-message -p '#S')
directory=$HOME/.local/scripts/sessions/

# WIP
nvim $directory$current_session.sh

# The files is stored in sessions in the scripts folder
# If a file exists open it in niovim
# otherwise create a new file with a template to edit
