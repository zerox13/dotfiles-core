# Use powerline
USE_POWERLINE="true"


#-------> My Function <----------
if [ -f ~/.functions ]; then
. ~/.functions
fi

if [ -f ~/.aliases ]; then
. ~/.aliases
fi
source /usr/local/opt/spaceship/spaceship.zsh
