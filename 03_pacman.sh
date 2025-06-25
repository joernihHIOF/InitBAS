#!/bin/bash
## Pacman
echo 'pacman starter'
sudo pacman -Sy archlinux-keyring manjaro-keyring --needed
sudo pacman -S --needed base-devel --noconfirm
sudo pacman -Syu
sudo pacman -S --noconfirm --needed --noconfirm - < ~/InitBAS/packages/pckfull.txt 2>/dev/null
## Yay
echo 'yay starter'
if ! command -v yay &> /dev/null
then
    echo "yay not found. Installing yay..."
    
    # Install dependencies if not already installed
    sudo pacman -Sy --needed git base-devel
    
    # Clone yay repository
    git clone https://aur.archlinux.org/yay.git /tmp/yay-install
    
    # Build and install yay
    cd /tmp/yay-install || exit
    makepkg -si --noconfirm
    
    # Clean up
    rm -rf /tmp/yay-install
    
    echo "yay has been installed successfully."
else
    echo "updating yay"
    yay -Syu --noconfirm
    yay         -S --noconfirm --needed --noconfirm - < ~/InitBAS/packages/yayfull.txt 2>/dev/null
fi
## Zsh
if ! command -v yay &> /dev/null
then
    echo "Hyprland is not installed. Proceeding with the installation..."
    bash <(curl -s "https://gitlab.com/stephan-raabe/hyprland-starter/-/raw/main/setup.sh")
else
    echo "Hyprland found"
fi
## Oh-my-zsh
if ! [ -n "$ZSH" ]
then
    echo "$PROGRAM_NAME is not installed. Proceeding with the installation..."
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    echo "ABC"
else
    echo "ZSH already installed"
fi

