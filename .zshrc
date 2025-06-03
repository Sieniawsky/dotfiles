# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export SIENIAWSKY=~/sieniawsky

# Load Antigen
source $SIENIAWSKY/antigen.zsh

# Load Antigen configs
antigen init ~/.antigenrc

alias home='cd ~'
alias genx='cd ~/genairx'
alias plat='cd ~/genairx/platform'
alias la='ls -la'
alias reload='source ~/.zshrc'
alias dotfile='pico ~/.zshrc'
alias apply='antigen apply'
alias prune='git remote prune origin'
alias pruned='git remote prune origin --dry-run'

# Path trash
export PATH="$PATH:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/sbin:~/bin"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

[ -s "/Users/martinsieniawski/.scm_breeze/scm_breeze.sh" ] && source "/Users/martinsieniawski/.scm_breeze/scm_breeze.sh"
