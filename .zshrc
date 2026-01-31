# Use powerline
USE_POWERLINE="true"


#-------> My Function <----------
if [ -f ~/.functions ]; then
. ~/.functions
fi

if [ -f ~/.profile ]; then
. ~/.profile
fi

if [ -f ~/.aliases ]; then
. ~/.aliases
fi

# Load RF functions, This file exists only on my RF machine
if [ -f ~/.RF_functions ]; then
. ~/.RF_functions
fi
# Initialize completion system
autoload -Uz compinit && compinit

## History things
HISTFILE=~/.histfile
# Maximum lines kept in memory
export HISTSIZE=100000
# Maximum lines saved to $HISTFILE
export SAVEHIST=100000
setopt appendhistory


# Eval things
eval "$(fzf --zsh)"
eval "$(starship init zsh)"
eval "$(uv generate-shell-completion zsh)"
eval "$(zoxide init zsh)"

. "$HOME/.local/bin/env"
