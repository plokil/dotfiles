# My dotfiles

Hi! This is a git repo with my dotfiles. I use the 
[Moonfly colorscheme](https://github.com/bluz71/vim-moonfly-colors) from bluz71, huge thanks to 
him for this beautiful colorscheme

# Installation
## Requirements

* git for cloning this repo
* stow for installing this
* kitty as a terminal emulator
* librewolf as a browser
* thunar as a file manager
* cantata and mpd for music
* nvim as a text editor
* zsh as a shell
* zoxide as a better cd alternative
* fzf for fuzzyfinding in nvim and zsh
* todo-bin for todo list in terminal
* sway as a Wayland tiling wm
* dunst as a notification thingy
* rofi-wayland for run
* wl-clipboard for clipboard
* grim, slurp and satty for screenshots
* Iosevka Nerd Font for everything besides kitty and
* BlexMono Nerd Font for kitty

I might have forgotten something, so be sure to open an issue if something is missing. Also you'll 
have to configure mpd and styles for GTK and QT yourself. Anyway, if you are using Arch Linux or one
of its derivatives, here is a command to install all this junk onto your system: 

```
sudo pacman -Syu git stow kitty thunar mpd nvim zsh zoxide fzf sway dunst rofi-wayland \
                 wl-clipboard slurp ttf-iosevka-nerd ttf-ibmplex-mono-nerd 
```

This does not install librewolf, todo, cantata and slurp, since they are only available from AUR,
use you favorite AUR helper to install them:

```
paru -S librewolf-bin cantata slurp todo-bin
```

## Installation

Firstly, clone the repo with git:
```
git clone https://www.gitlab.com/plokil/dotfiles
```

Then, cd into the repo and use stow to install the dotfiles:
```
cd dotfiles
stow .
```

Use chsh to change the login shell to zsh:
```
chsh -S $(which zsh)
```

First time opening of nvim and zsh

This should be it, if you have any questions, feel free to open an issue or reach out to me via
e-mail (plokil.deb@gmail.com) or Telegram ([@plokilx](https://t.me/plokilx))
