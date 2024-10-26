#!/bin/zsh

if pgrep -f 'AIMP.exe' > /dev/null; then
    hyprctl dispatch sendshortcut , z, aimp.exe
else
    playerctl previous
fi