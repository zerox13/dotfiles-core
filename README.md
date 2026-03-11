
# dotfiles-core



░ ▒█▀▀▄ ▒█▀▀▀█ ▀▀█▀▀ ▒█▀▀▀ ▀█▀ ▒█░░░ ▒█▀▀▀ ▒█▀▀▀█    
▄ ▒█░▒█ ▒█░░▒█ ░▒█░░ ▒█▀▀▀ ▒█░ ▒█░░░ ▒█▀▀▀ ░▀▀▀▄▄    
█ ▒█▄▄▀ ▒█▄▄▄█ ░▒█░░ ▒█░░░ ▄█▄ ▒█▄▄█ ▒█▄▄▄ ▒█▄▄▄▄



### Config list
This repo contains config files for the following:
- Neovim
- Tmux
- Alacrity
- shell functions
- Aliases
- Starship
- worktrunk


## Setup

#### Prerequisites
* install GNU stow
* install tmux tpm
* install nvim
* install zodix
* install colorls
    * Run: ```gem install colorls```
* install a NerdFont, like FiraCode
    * Download [FiraCode](https://www.nerdfonts.com/font-downloads)
    * Unzip and move to: ```~/.local/share/font```
    * Run: ```fc-cache -fv ```


### Manage files using GNU Stow
GNU Stow is a symlink farm manager. Can be used in this case to create symlinks to all dotfiles in a simple way.  

>[!NOTE]
>Important: because Stow places the symlinks in parent dir, repo should be cloned in $HOME
>
>Also, The file structure should be the same structure as it should be in $HOME


* clone the repo in $HOME 

### Create Symlinks 

```
cd dotfiles-core
stow .
```



### Use as a bare clone

Run this snippet to do the job.
```
git clone --bare git@github.com:zerox13/dotfiles-core.git $HOME/.dotfiles-core
function coreConfig {
   /usr/bin/git --git-dir=$HOME/.dotfiles-core/ --work-tree=$HOME $@
}
mkdir -p .config-backup
coreConfig checkout
if [ $? = 0 ]; then
  echo "Checked out config.";
  else
    echo "Backing up pre-existing dot files.";
    coreConfig checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} .config-backup/{}
fi;
coreConfig checkout
coreConfig config status.showUntrackedFiles no
```

Want to understand what is going on read this article.
[article](https://www.atlassian.com/git/tutorials/dotfiles)
