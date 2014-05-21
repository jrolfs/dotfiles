#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

#
# Homeshick

source "$HOME/.homesick/repos/homeshick/homeshick.sh"

# Completions
fpath=($HOME/.homesick/repos/homeshick/completions $fpath)

# Key Bindings
bindkey '^R' history-incremental-search-backward

# Prompt
autoload -Uz promptinit
promptinit
prompt steeef
