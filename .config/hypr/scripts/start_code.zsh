#!/bin/zsh

if ! pgrep -f 'Editor/Unity' > /dev/null; then
  rider ~/.config/dotfiles.sln
else
  project_path=$(pgrep -a -f 'Editor/Unity' | awk -F '-projectpath ' '{print $2}' | awk '{print $1}')
  rider "${project_path}/$(basename $project_path).sln"
fi