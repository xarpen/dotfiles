#!/bin/bash

echo "Configuring pacman"
bash ./etc-pacman.bash

echo "Installing pacman packages"
sudo pacman -S --noconfirm --needed alacritty aria2 base btop dotnet-sdk doublecmd-qt6 dunst gnome-disk-utility ifuse libreoffice-fresh meld mpv-mpris nano oath-toolkit steam telegram-desktop tldr wireguard-tools zoxide zsh-autosuggestions zsh-completions zsh-syntax-highlighting

echo "Installing oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Linking packages to oh-my-zsh"
sudo ln -s /usr/share/zsh/plugins/zsh-autosuggestions ~/.oh-my-zsh/plugins/zsh-autosuggestions
sudo ln -s /usr/share/zsh/plugins/zsh-syntax-highlighting ~/.oh-my-zsh/plugins/zsh-syntax-highlighting