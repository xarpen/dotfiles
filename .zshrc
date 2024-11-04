export EDITOR=subl
export ZSH="$HOME/.oh-my-zsh"
export PATH=$PATH:~/.local/bin

ZSH_THEME="robbyrussell"
ZSH_COMPDUMP="$ZSH_CACHE_DIR/.zcompdump"
CASE_SENSITIVE="false"
COMPLETION_WAITING_DOTS="true"
TIMER_FORMAT=%d
HIST_STAMPS="dd.mm.yyyy"

plugins=(
	archlinux               # This plugin adds some aliases and functions to work with Arch Linux.
	sudo                    # Easily prefix your current or previous commands with sudo by pressing esc twice.
  history                 # Provides a couple of convenient aliases for using the history command to examine your command line history.
	command-not-found       # This plugin uses the command-not-found package for zsh to provide suggested packages to be installed if a command cannot be found.
	timer                   # Adds timer for executed command.
	zoxide                  # Initializes zoxide, a smarter cd command for your terminal.
	zsh-syntax-highlighting # This package provides syntax highlighting for the shell zsh.
  zsh-autosuggestions     # It suggests commands as you type based on history and completions.
)

fpath=(~/.zsh/completions $fpath)
autoload -Uz compinit && compinit

zstyle ':omz:update' mode auto
source $ZSH/oh-my-zsh.sh

# Start in Downloads
if [ "$PWD" = "$HOME" ]; then
    cd ~/Downloads
fi

unalias grep

# Commands
aria() { aria2c "$(wl-paste)" }
ariaf() { ~/.config/hypr/scripts/magnet_files.zsh }
p() { ping 8.8.8.8 }
clear() { tput clear }
kilall() { kilall }
mont () {
  tput civis # Hide the cursor
  trap 'tput cnorm; exit' INT TERM # Ensure cursor is shown again on exit
  while true; do
    tput cup 0 0 # Move the cursor to the top-left corner
    sensors -A | grep -E 'pci|C|^$' | grep -v -E 'crit|Sensor';
    tput ed # Clear from cursor to the end of the screen
    sleep 2;
  done
  tput cnorm # Show the cursor again
}

source ~/.zshrc-extra