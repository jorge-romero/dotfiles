# My dot files:

## How to set them up:

To to it from scratch
1. Create a git bare repository at ~/.dotfiles.git to track files.
1. Add alias setting to shell configuration file. I use zsh so it’s .zshrc. For bash, it’d be .bashrc. Note how the paths for git directory and working tree are set.
1. Reload the shell setting.
1. Prevent untracked files from showing up when we call dotfiles status.

```sh
git init --bare $HOME/.dotfiles.git
echo 'alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME"' >> $HOME/.zshrc
source ~/.zshrc
dotfiles config --local status.showUntrackedFiles no
```

## To import them in a new system:

1. Create alias to ensure that the git bare repository works without problem.
1. Reload the shell setting to use that alias.
1. Add .dotfiles.git directory to .gitignore to prevent recursion issues.
1. Clone the repo.
1. Check if it works fine.
1. If you already have configuration files with identical names, checkout will fail. Back up and remove those files. Skip back up if you don’t need them.
1. Prevent untracked files from showing up on dotfiles status.


```sh
echo 'alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME"' >> $HOME/.zshrc
source ~/.zshrc
echo ".dotfiles.git" >> .gitignore
git clone --bare https://github.com/jorge-romero/dotfiles.git $HOME/.dotfiles.git
dotfiles checkout
dotfiles config --local status.showUntrackedFiles no
```
