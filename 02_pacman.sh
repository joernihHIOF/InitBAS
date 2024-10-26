#!/bin/bash

sudo pacman -Syu --noconfirm
sudo pacman -S --needed base-devel --noconfirm
sudo pacman -S yay --needed --noconfirm
sudo pacman -S --noconfirm --needed --noconfirm - < ~/InitBAS/packages/pckfull.txt 2>/dev/null
yay         -S --noconfirm --needed --noconfirm - < ~/InitBAS/packages/yayfull.txt 2>/dev/null
# I
if [ ! -d "$fileh" ]; then
  echo "Hyprland is already installed."
else
  echo "Hyprland is not installed. Proceeding with the installation..."
  bash <(curl -s "https://gitlab.com/stephan-raabe/hyprland-starter/-/raw/main/setup.sh")
fi
# II
filez="$HOME/.oh-my-zsh/oh-my-zsh.sh"
if [ ! -f "$filez" ]; then
  echo "Oh My Zsh is already installed."
else
  echo "$PROGRAM_NAME is not installed. Proceeding with the installation..."
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

