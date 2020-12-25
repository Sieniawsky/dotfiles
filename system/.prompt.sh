# root and user prompt lambda
if [ "`id -u`" -eq 0 ]; then
    PS1="[ \[\e[1;31m\]λ\[\e[1;32m\]\[\e[49m\] \W \[\e[0m\]] "
else
    PS1="[ \[\e[1;32m\]λ \W \[\e[0m\]] "
fi
