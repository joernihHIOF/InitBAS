#!/bin/bash

# sudo pacman -Syu --noconfirm
# sudo pacman -S --needed base-devel --noconfirm
# sudo pacman -S yay --needed --noconfirm
sudo pacman -S --noconfirm --needed - < packages/pckfull.txt 2>/dev/null
yay         -S --noconfirm --needed - < packages/yayfull.txt 2>/dev/null

if [ ! -d "$fileh" ]; then
  echo "Hyprland is already installed."
else
  echo "Hyprland is not installed. Proceeding with the installation..."
  bash <(curl -s "https://gitlab.com/stephan-raabe/hyprland-starter/-/raw/main/setup.sh")
fi
