source ~/antigen.zsh

. $HOME/.asdf/asdf.sh

## Load the oh-my-zsh's library
antigen use oh-my-zsh
antigen bundle kiurchv/asdf.plugin.zsh

# Bundle the following default
antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found

# Syntax highlighting bundle
antigen bundle zsh-users/zsh-syntax-highlighting

antigen theme robbyrussell

antigen apply



