#!/bin/bash

for DOTFILE in `find $HOME/projects/dotfiles/system`; do
    [ -f "$DOTFILE" ] && source "$DOTFILE"
done

# Path trash
export PATH="$PATH:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/sbin"

alias reload='source ~/.bash_profile'

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
