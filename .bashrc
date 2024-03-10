#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls -lhX --color=auto'
alias la='ls -lAhX --color=auto'
alias grep='grep --color=auto'

PS1='\[\e[92m\][\u@\h \W] \[\e[94m\]$? \[\e[92m\]\$ \[\e[0m\]'
export SUDO_PROMPT="$(tput setaf 1 bold)[sudo] Password for %p:$(tput sgr0) "

alias vencord-install='sh -c "$(curl -sS https://raw.githubusercontent.com/Vendicated/VencordInstaller/main/install.sh)"'
alias yzv='/home/plokil/YZVBot/bin/python /home/plokil/YZVBot/uzvarbot.py'

todo
