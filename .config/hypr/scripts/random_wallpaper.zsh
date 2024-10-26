#!/usr/bin/zsh

random_wallpaper=$(ls ~/Pictures/Wallpapers/*.* | shuf -n 1)

hyprctl hyprpaper unload all
hyprctl hyprpaper preload $random_wallpaper

for display in DP-0 DP-1 DP-2 DP-3 DP-4 DP-5 HDMI-A-1 HDMI-A-2 HDMI-A-3 HDMI-A-4 HDMI-A-5; do
    hyprctl hyprpaper wallpaper "$display, $random_wallpaper"
done