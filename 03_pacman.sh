#!/bin/bash
## Pacman
echo 'pacman starter'
sudo pacman -Sy archlinux-keyring manjaro-keyring --needed
sudo pacman -S --needed base-devel --noconfirm
sudo pacman -Syu --noconfirm
sudo pacman -S fastfetch
sudo pacman -S --noconfirm --needed --noconfirm - < ~/InitBAS/packages/pckfull.txt 2>/dev/null
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}/nvim/site/autoload/plug.vim" --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

### Yay
if ! command -v yay &> /dev/null
then
    echo "yay not found. Installing yay..."
    
    # Install dependencies if not already installed
    sudo pacman -Sy --needed git base-devel
    
    # Clone yay repository
    git clone https://aur.archlinux.org/yay.git /tmp/yay-install
    
    # Build and install yay
    #cd /tmp/yay-install || exit
    #makepkg -si --noconfirm
    # Jump to the new directory, then return after install
    pushd /tmp/yay-install || exit
    makepkg -si --noconfirm
    echo "yay has been installed successfully."
    popd
    
    rm -rf /tmp/yay-install
    echo "updating yay"
    yay -Syu --noconfirm
    yay -S --noconfirm --needed --noconfirm - < ~/InitBAS/packages/yayfull.txt 2>/dev/null
else
    echo "updating yay"
    yay -Syu --noconfirm
    yay         -S --noconfirm --needed --noconfirm - < ~/InitBAS/packages/yayfull.txt 2>/dev/null
fi
## 

## Zsh
## Oh-my-zsh
if ! [ -n "$ZSH" ]
then
    echo "$PROGRAM_NAME is not installed. Proceeding with the installation..."
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    echo "ABC"
else
    echo "ZSH already installed"
fi

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}/nvim/site/autoload/plug.vim" --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
nvim +UpdateRemotePlugins +qall
#
