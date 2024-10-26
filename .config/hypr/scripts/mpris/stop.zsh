#!/bin/zsh

if pgrep -f 'AIMP.exe' > /dev/null; then
    hyprctl dispatch sendshortcut , c, aimp.exe
else
    playerctl stop
fi