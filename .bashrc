#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Colours
alias ls='ls -lhX --color=auto'
alias la='ls -lAhX --color=auto'
alias grep='grep --color=auto'

# Prompts
PS1='\[\e[92m\][\e[3m\u\e[0m\[\e[92m\]@\e[3m\h\e[0m\[\e[92m\] \W] \[\e[94m\]$? \[\e[92m\]\$ \[\e[0m\]'
export SUDO_PROMPT="$(tput setaf 1 bold)[sudo] Password for %p:$(tput sgr0) "

# Custom aliases
alias vencord-install='sh -c \
  "$(curl -sS https://raw.githubusercontent.com/Vendicated/VencordInstaller/main/install.sh)"'
alias yzv='/home/plokil/YZVBot/bin/python /home/plokil/YZVBot/uzvarbot.py'
alias dimscreen='gammastep -l 0:0 -o -b 0.6:0.6'

export PATH="/home/user/dir/install/sbin:/home/user/dir/install/bin:$PATH"

todo
