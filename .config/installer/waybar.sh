#!/bin/bash

pushd .
cd ~
git clone https://aur.archlinux.org/waybar-git.git
cd waybar-git
sed -i 's/github\.com\/Alexays\/Waybar/github\.com\/xarpen\/Waybar/g' PKGBUILD
makepkg -si --noconfirm
cd ..
rm -rf waybar-git
popd