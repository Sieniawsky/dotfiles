#!/bin/bash

for DOTFILE in `find $HOME/projects/dotfiles/system`; do
    [ -f "$DOTFILE" ] && source "$DOTFILE"
done

# Path trash
export PATH="$PATH:`yarn global bin`"
export PATH="$PATH:/usr/local/Cellar/elixir/1.4.4/bin"
export PATH="/usr/local/sbin:$PATH"

alias reload='source ~/.bash_profile'
