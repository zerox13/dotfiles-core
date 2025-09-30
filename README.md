
# dotfiles-core



░ ▒█▀▀▄ ▒█▀▀▀█ ▀▀█▀▀ ▒█▀▀▀ ▀█▀ ▒█░░░ ▒█▀▀▀ ▒█▀▀▀█    
▄ ▒█░▒█ ▒█░░▒█ ░▒█░░ ▒█▀▀▀ ▒█░ ▒█░░░ ▒█▀▀▀ ░▀▀▀▄▄    
█ ▒█▄▄▀ ▒█▄▄▄█ ░▒█░░ ▒█░░░ ▄█▄ ▒█▄▄█ ▒█▄▄▄ ▒█▄▄▄█    




   
Provides the core dotfiles that are crossplatform for my workflow

### Config list
This repo contains config files for the following:
- Neovim
- Tmux
- Alacrity
- shell functions
- Aliases


### install
* clone the repo
* install tmux tpm
* install the FiraCode nerdFont





## Use as a bare clone

Run this snippet to do the job.
```
git clone --bare git@github.com:zerox13/dotfiles-core.git $HOME/.dotfiles-core
function coreConfig {
   /usr/bin/git --git-dir=$HOME/.dotfiles-core/ --work-tree=$HOME $@
}
mkdir -p .config-backup
config checkout
if [ $? = 0 ]; then
  echo "Checked out config.";
  else
    echo "Backing up pre-existing dot files.";
    config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} .config-backup/{}
fi;
config checkout
config config status.showUntrackedFiles no
```

Want to understand what is going on read this article.
[article](https://www.atlassian.com/git/tutorials/dotfiles)
