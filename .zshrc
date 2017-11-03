# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored
zstyle :compinstall filename '/home/mk7/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=1000
setopt appendhistory autocd extendedglob
bindkey -v
# End of lines configured by zsh-newuser-install

# Load bash_completion scripts
#autoload -U +X compinit && compinit
autoload -U +X bashcompinit && bashcompinit
PATHWAYCOMP=/etc/bash_completion.d/comp-pathway.sh
test -r $PATHWAYCOMP && source $PATHWAYCOMP

# General
autoload -Uz promptinit
promptinit
prompt walters
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
export TERM=screen-256color
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE=fg=240

# Autocompletion
zstyle ':completion:*' menu select
