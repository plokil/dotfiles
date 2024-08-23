# oh-my-posh prompt
eval "$(oh-my-posh init zsh --config ~/.config/ohmyposh/zen.toml)"

# Set the directory we want to store zinit and plugins
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

# Download Zinit, if it's not there yet
if [ ! -d "$ZINIT_HOME" ]; then
    mkdir -p "$(dirname $ZINIT_HOME)"
    git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

# Source/Load Zinit
source "${ZINIT_HOME}/zinit.zsh"

# Zinit plugins
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab

# Zinit snippets
zinit snippet OMZP::git
zinit snippet OMZP::sudo
source /usr/share/doc/pkgfile/command-not-found.zsh
zinit snippet OMZP::command-not-found

# Load completions
autoload -U compinit && compinit

zinit cdreplay -q

# Sudo prompt
export SUDO_PROMPT="$(tput setaf 1 bold)[sudo] Password for %p:$(tput sgr0) "

# Keybindings
# Emacs mode
bindkey -e
# History search
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward
# del key
bindkey "^[[3~" delete-char

# History
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# Completion styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'
zstyle ':fzf-tab:complete:z:*' fzf-preview 'ls --color $realpath'


# Aliases
alias ls='eza -l --icons=auto --color=auto --group-directories-first'
alias la='eza -lA --icons=auto --color=auto --group-directories-first'
alias grep='echo "use ripgrep"; sleep 1; grep --color=auto'
alias vencord-install='sh -c \
  "$(curl -sS https://raw.githubusercontent.com/Vendicated/VencordInstaller/main/install.sh)"'
alias dimscreen='gammastep -l 0:0 -o -b 0.6:0.6'
alias fixtv='swaymsg output HDMI-A-1 mode 3840x2160@59.940Hz'
alias terraria='/home/plokil/.local/share/Steam/steamapps/common/Terraria/Terraria'
alias swaylock='touch /home/plokil/swaylock.lock; swaylock; rm /home/plokil/swaylock.lock'

# Env variables
export EDITOR=nvim

# Shell integrations
eval "$(fzf --zsh)"

# Zoxide
alias cd='z'
eval "$(zoxide init zsh)"

export PATH=$PATH:~/.spoof-dpi/bin
export PATH=$PATH:~/.cargo/bin

# Created by `pipx` on 2024-08-08 12:22:35
export PATH="$PATH:/home/plokil/.local/bin"
