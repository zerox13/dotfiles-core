# Use powerline
USE_POWERLINE="true"

# Source manjaro-zsh-configuration
if [[ -e ~/.zsh-config ]]; then
  source ~/.zsh-config
fi

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
eval "$(starship init zsh)"
