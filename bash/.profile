#!/bin/bash

DOTFILES_PATH=~/.dotfiles
BASH_SRC_PATH=$DOTFILES_PATH/bash

. "$BASH_SRC_PATH"/.prompt
. "$BASH_SRC_PATH"/.aliases
. "$BASH_SRC_PATH"/.functions
. "$BASH_SRC_PATH"/.osx

bind 'set completion-ignore-case on'

shopt -s autocd

# edit this folder
alias dot="cd ~/.dotfiles"
# reload
alias rl="source ~/.profile; echo '~/.profile reloaded.'"

# make sure npm bin is added to path
export PATH="$HOME/.npm-packages/bin:$PATH"
