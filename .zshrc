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

# Color for suggestions
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE=fg=240

# Bind ^D to accept word in autosuggestions
bindkey '^d' vi-forward-blank-word

# Use other keys for navigation
bindkey 'jk' vi-cmd-mode
bindkey 'jj' vi-forward-blank-word

# Autocompletion
zstyle ':completion:*' menu select

# Show vi mode
function zle-line-init zle-keymap-select {
  case $KEYMAP in
#    vicmd) print -rn -- $terminfo[cvvis];; # block cursor
#    viins|main) print -rn -- $terminfo[cnorm];; # less visible cursor

#    vicmd) print -n '\e]12;blue\a' ;;
#    viins|main) print -n '\e]12;white\a' ;;
    vicmd) printf "\033[2 q" ;;
    viins|main) printf "\033[6 q" ;;
  esac
}

function zle-line-finish
{
  printf "\033[2 q"
}

zle -N zle-line-init
zle -N zle-line-finish
zle -N zle-keymap-select

# Enable Ctrl-S work
stty ixany
stty ixoff -ixon

# Load local zshrc if it exists. For addition of specifics to this host only
test -s ~/.loczshrc && . ~/.loczshrc || true
