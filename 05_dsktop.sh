#!/bin/bash

## Function to clone repository if it doesn't exist
clone_if_not_exists() {
    repo_url="$1"
    target_dir="$2"
    
    if [ ! -d "$target_dir" ]; then
        git clone --depth 1 "$repo_url" "$target_dir"
    else
        echo "Directory $target_dir already exists. Skipping clone."
    fi
}

# clone_if_not_exists "https://github.com/makccr/wallpapers" "$HOME/.config/wallpapers/github"

# Desktop managers
## Hyprland
sudo pacman -S hyprland
sudo pacman -S waybar rofi-wayland alacritty dunst dolphin xdg-desktop-portal-hyprland qt5-wayland qt6-wayland hyprpaper hyprlock ttf-font-awesome
#
## KDE plasma
#sudo pacman -S  xorg plasma kde-applications --needed
#sudo pacman -S plasma-nm --needed
#sudo pacman -S plasma-wayland-session --needed
#
## Qtile
#sudo pacman -S qtile


