#!/bin/bash
echo 'pacman starter'
sudo pacman -Sy archlinux-keyring manjaro-keyring --needed
sudo pacman -S --needed base-devel --noconfirm
sudo pacman -S yay --needed --noconfirm
sudo pacman -S --noconfirm --needed --noconfirm - < ~/InitBAS/packages/pckfull.txt 2>/dev/null
yay         -S --noconfirm --needed --noconfirm - < ~/InitBAS/packages/yayfull.txt 2>/dev/null
### I
fileh="$HOME/.config/hypr"                                                             
if [ ! -d "$fileh" ]; then
  echo "Hyprland is not installed. Proceeding with the installation..."
  bash <(curl -s "https://gitlab.com/stephan-raabe/hyprland-starter/-/raw/main/setup.sh")
else
  echo "Hyprland is already installed."
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

