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
alias grep='grep --color=auto'
alias vencord-install='sh -c \
  "$(curl -sS https://raw.githubusercontent.com/Vendicated/VencordInstaller/main/install.sh)"'
alias dimscreen='gammastep -l 0:0 -o -b 0.6:0.6'
alias fixtv='swaymsg output HDMI-A-1 mode 3840x2160@59.940Hz'
alias terraria='/home/plokil/.local/share/Steam/steamapps/common/Terraria/Terraria'

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

# fzf config
export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
  --color bg:#080808 \
  --color bg+:#262626 \
  --color border:#2e2e2e \
  --color fg:#b2b2b2 \
  --color fg+:#e4e4e4 \
  --color gutter:#262626 \
  --color header:#80a0ff \
  --color hl+:#f09479 \
  --color hl:#f09479 \
  --color info:#cfcfb0 \
  --color marker:#f09479 \
  --color pointer:#ff5189 \
  --color prompt:#80a0ff \
  --color spinner:#36c692
"
