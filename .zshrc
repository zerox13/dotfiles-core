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

# Initialize completion system
autoload -Uz compinit && compinit

eval "$(fzf --zsh)"
eval "$(starship init zsh)"
eval "$(uv generate-shell-completion zsh)"
