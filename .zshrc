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
eval "$(fzf --zsh)"
eval "$(starship init zsh)"
