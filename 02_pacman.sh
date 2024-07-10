#!/bin/bash

sudo pacman -Syu --noconfirm
sudo pacman -S --needed base-devel --noconfirm
sudo pacman -S yay --needed --noconfirm
sudo pacman -S --noconfirm --needed - < packages/pckfull.txt 2>/dev/null
yay         -S --noconfirm --needed - < packages/yayfull.txt 2>/dev/null



## Replace PROGRAM_NAME with the actual program you want to check
PROGRAM_NAME="hyprland" 

file="$HOME/.config/hyprlan"                                                             
if [ -f "$file" ]; then                                                                          
  echo "$PROGRAM_NAME is not installed. Proceeding with the installation..."
  bash <(curl -s "https://gitlab.com/stephan-raabe/hyprland-starter/-/raw/main/setup.sh")
else                                                                                             
    echo "false"                                                                                 
  fi                                                                                                                                       
#sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

