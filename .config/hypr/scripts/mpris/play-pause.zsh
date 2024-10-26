#!/bin/zsh

if pgrep -f 'AIMP.exe' > /dev/null; then
    hyprctl dispatch sendshortcut , x, aimp.exe
else
    playerctl play-pause
fi