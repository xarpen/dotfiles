#!/bin/bash

echo "Installing paru"
pushd .
cd ~
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si --noconfirm
rm -rf paru
popd

echo "Configuring paru"
bash ./etc-paru.bash

echo "Installing packages"
paru -S --noconfirm --needed --skipreview --useask --batchinstall grim slurp arronax bottles gitkraken flameshot librewolf-bin powershell-bin qalculate-qt tkpacman dotool
paru --needed --skipreview spotify-edge