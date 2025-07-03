##!/bin/bash
#
### Function to clone repository if it doesn't exist
#clone_if_not_exists() {
#    repo_url="$1"
#    target_dir="$2"
#    
#    if [ ! -d "$target_dir" ]; then
#        git clone --depth 1 "$repo_url" "$target_dir"
#    else
#        echo "Directory $target_dir already exists. Skipping clone."
#    fi
#}
#
## Desktop managers
### Hyprland
#if ! command -v Hyprland &> /dev/null
#then
#    echo "Hyprland is not installed. Proceeding with the installation..."
#	sudo pacman -S hyprland
#	sudo pacman -S waybar rofi-wayland alacritty dunst dolphin xdg-desktop-portal-hyprland qt5-wayland qt6-wayland hyprpaper hyprlock ttf-font-awesome
#        ln -sf $HOME/InitBAS/config/hyprland/hyprland.conf  $HOME/.config/hypr/hyprland.conf
#        ln -sf $HOME/InitBAS/config/hyprland/hyprpaper.conf $HOME/.config/hypr/hyprpaper.conf
#else
#    echo "Hyprland found"
#fi
#
#
##
### KDE plasma
#sudo pacman -S plasma kde-applications --needed
#sudo pacman -S plasma-nm --needed
#sudo pacman -S plasma-wayland-session --needed
##
### Qtile
#sudo pacman -S qtile
#
#
#
