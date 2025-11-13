#!/bin/bash
killall hyprpaper
sleep 1
hyprpaper &

# New
#WALLPAPER_DIR="$HOME/.config/wallpapers/*"
#WALLPAPER=$(find "$WALLPAPER_DIR" -type f | shuf -n 1)
#MONITOR=$(hyprctl monitors | grep "Monitor" | cut -d " " -f 2)
#
#hyprctl hyprpaper unload all
#hyprctl hyprpaper preload "$WALLPAPER"
#hyprctl hyprpaper wallpaper "$MONITOR,$WALLPAPER"
