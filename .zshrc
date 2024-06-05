# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Load Antigen
source "$HOME/antigen.zsh"

# Load Antigen configs
antigen init ~/.antigenrc

alias home='cd ~'
alias carrot='cd ~/carrot'
alias v2='cd ~/carrot/enterprise/connect-api'
alias osp='cd ~/carrot/enterprise/post-checkout-app'
alias docs='cd ~/instacart/docs-public'
alias customers='cd ~/carrot/customers/instacart'
alias customersb='cd ~/carrot/customers/customers-backend'
alias dashboard='cd ~/carrot/retailer-tools/retailer-platform-web-workspace/packages/dashboard'
alias infra='cd ~/instacart/tf-instacart'
alias jssdk='cd ~/instacart/instacart-javascript'
alias la='ls -la'
alias reload='source ~/.zshrc'
alias dotfile='pico ~/.zshrc'
alias apply='antigen apply'
alias prune='git remote prune origin'
alias pruned='git remote prune origin --dry-run'

# Path trash
export PATH="$PATH:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/sbin:~/bin"
export PATH="$PATH:/usr/local/opt/postgresql@12/bin"
export GITHUB_TOKEN=

### BEGIN--Instacart Shell Settings. (Updated: Wed Apr  7 17:07:49 EDT 2021. [Script Version 1.2.11])
# This Line Added Automatically by Instacart Setup Script
# The sourced file contains all of the instacart utilities and shell settings
# To remove this functionality, leave the block, and enter "NO-TOUCH" in the BEGIN line, and comment the line below:
source /Users/martinsieniawski/.instacart_shell_profile
### END--Instacart Shell Settings.


# BENTO_COMPLETIONS_START
export BENTO_COMPLETIONS_VERSION=2

autoload -U compinit; compinit
source <(bento completion zsh --silent)
export PGHOST=localhost # Set PGHOST to talk to bento postgres

# BENTO_COMPLETIONS_END

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export TERRACART_COMMON_DEFAULTS_DIR='~/instacart/terraform-common-defaults/'

[ -s "/Users/martinsieniawski/.scm_breeze/scm_breeze.sh" ] && source "/Users/martinsieniawski/.scm_breeze/scm_breeze.sh"
