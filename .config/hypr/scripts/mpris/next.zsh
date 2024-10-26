#!/bin/zsh

if pgrep -f 'AIMP.exe' > /dev/null; then
    hyprctl dispatch sendshortcut , b, aimp.exe
else
    playerctl next
fi