#!/bin/bash

DOTFILES_PATH=~/.dotfiles
BASH_SRC_PATH=$DOTFILES_PATH/bash

. "$BASH_SRC_PATH"/.env
. "$BASH_SRC_PATH"/.prompt
. "$BASH_SRC_PATH"/.aliases
. "$BASH_SRC_PATH"/.functions
. "$BASH_SRC_PATH"/.osx

# edit this folder
alias dot="cd ~/.dotfiles"
# reload
alias rl="source ~/.profile; echo '~/.profile reloaded.'"

# make sure npm bin is added to path
export PATH="$HOME/.npm-packages/bin:$PATH"