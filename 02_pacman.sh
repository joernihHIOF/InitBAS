#!/bin/bash
#sudo pacman -S --needed base-devel --noconfirm
#sudo pacman -Syu --noconfirm
#sudo pacman -S yay --needed --noconfirm
#sudo pacman -S --noconfirm --needed --noconfirm - < ~/InitBAS/packages/pckfull.txt 2>/dev/nulljkj
#yay         -S --noconfirm --needed --noconfirm - < ~/InitBAS/packages/yayfull.txt 2>/dev/null
## I
echo 'hyprland'
if [ ! -d "$fileh" ]; then
  echo "Hyprland is already installed."
else
  echo "Hyprland is not installed. Proceeding with the installation..."
  bash <(curl -s "https://gitlab.com/stephan-raabe/hyprland-starter/-/raw/main/setup.sh")
## II
echo 'oh-my-zsh'
fi
filez="$HOME/.oh-my-zsh/oh-my-zsh.sh"
if [ ! -f "$filez" ]; then
  echo "$PROGRAM_NAME is not installed. Proceeding with the installation..."
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
else
  echo "Oh My Zsh is already installed."
fi

