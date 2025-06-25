#!/bin/bash
## Pacman
echo 'pacman starter'
sudo pacman -Sy archlinux-keyring manjaro-keyring --needed
sudo pacman -S --needed base-devel --noconfirm
<<<<<<< HEAD
sudo pacman -S yay --needed --noconfirm
sudo pacman -S --noconfirm --needed --noconfirm - < ~/InitBAS/packages/pckfull.txt 2>/dev/null
yay         -S --noconfirm --needed --noconfirm - < ~/InitJIH/packages/yayfull.txt 2>/dev/null
sudo pacman -Syu --noconfirm --needed --noconfirm - < ~/InitBAS/packages/pckfull.txt 2>/dev/null

### Function to check if a package is installed
is_installed() {
    pacman -Qi "$1" &> /dev/null
    return $?
}

 Check if Yay is already installed
if is_installed "yay"; then
    echo "Yay is already installed."
else
    echo "Yay is not installed. Proceeding with installation..."

    # Clone Yay repository
    git clone https://aur.archlinux.org/yay.git
    # Navigate to Yay directory
    cd yay
    # Build and install Yay
    makepkg -si --noconfirm

    # Clean up
    cd ..
    rm -rf yay

    # Verify Yay installation
    if is_installed "yay"; then
        echo "Yay has been successfully installed!"
    else
        echo "Yay installation failed."
    fi
fi
=======
sudo pacman -S --noconfirm --needed --noconfirm - < ~/InitBAS/packages/pckfull.txt 2>/dev/null

## Yay
#is_installed() {
#    pacman -Qi "$1" &> /dev/null
#    return $?
#}
## Check if Yay is already installed
# if is_installed "yay"; then
#     echo "Yay is already installed."
# else
#     echo "Yay is not installed. Proceeding with installation..."
# 
#     # Clone Yay repository
#     git clone https://aur.archlinux.org/yay.git
#     # Navigate to Yay directory
#     cd yay
#     # Build and install Yay
#     makepkg -si --noconfirm
# 
#     # Clean up
#     cd ..
#     rm -rf yay
# 
#     # Verify Yay installation
#     if is_installed "yay"; then
#         echo "Yay has been successfully installed!"
#     else
#         echo "Yay installation failed."
#     fi
# fi
>>>>>>> 2cc1488a55a2f5c0aec4dc79d7c42befc7fcbdac
# #
yay         -Syu --noconfirm 
yay         -S --noconfirm --needed --noconfirm - < ~/InitBAS/packages/yayfull.txt 2>/dev/null

### II
#echo 'oh-my-zsh'
#filez="$HOME/.oh-my-zsh/oh-my-zsh.sh"
#if [ ! -f "$filez" ]; then
#  echo "$PROGRAM_NAME is not installed. Proceeding with the installation..."
#  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
#else
#  echo "Oh My Zsh is already installed."
#fi
##
### I
fileh="$HOME/.config/hypr"                                                             
if [ ! -d "$fileh" ]; then
  echo "Hyprland is already installed."
else
  echo "Hyprland is not installed. Proceeding with the installation..."
  #bash <(curl -s "https://gitlab.com/stephan-raabe/hyprland-starter/-/raw/main/setup.sh")
fi

