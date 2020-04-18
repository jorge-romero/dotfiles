# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# Load OS specific configuration
if [ -f ~/.dotfiles/.bash_profile_$OSTYPE ]
then
  . ~/.dotfiles/.bash_profile_$OSTYPE
fi

if [ -f ~/.dotfiles/.bashrc_$OSTYPE ]
then
  . ~/.dotfiles/.bashrc_$OSTYPE
fi

# Load aliases
if [ -f ~/.dotfiles/.aliases_$OSTYPE ]
then
  . ~/.dotfiles/.aliases_$OSTYPE
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
  PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -f `which powerline-daemon` ]; then
  powerline-daemon -q
  POWERLINE_BASH_CONTINUATION=1
  POWERLINE_BASH_SELECT=1
  . /usr/share/powerline/bash/powerline.sh
fi

# Load aliases
if [ -f ~/.aliases ]
then
  . ~/.aliases
fi

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# Fix del key in simple terminal
tput smkx

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/biterchus/.sdkman"
[[ -s "/home/biterchus/.sdkman/bin/sdkman-init.sh" ]] && source "/home/biterchus/.sdkman/bin/sdkman-init.sh"
