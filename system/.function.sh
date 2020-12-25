# mkdir and enter
function mk {
    mkdir -p "$@" && cd "$@"
}
