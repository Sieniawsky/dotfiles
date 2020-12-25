DOTFILES_PATH="$HOME/projects/dotfiles/runcom"

function connectTheDots {
    ln -sv "$DOTFILES_PATH/.bash_profile" ~
    ln -sv "$DOTFILES_PATH/.inputrc" ~
}

connectTheDots
source "$HOME/.bash_profile"
buildResult=$?

if [ $buildResult -eq 0 ]; then
    echo "dotfiles installed and linked"
else
    echo "dotfiles installation failed"
fi

unset DOTFILES_PATH
exit $buildResult
