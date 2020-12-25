function disconnectTheDots {
    unlink "$HOME/.bash_profile"
    unlink "$HOME/.inputrc"
}

disconnectTheDots
echo "dotfiles unlinked"
$@
