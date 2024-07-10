#!/bin/bash

# Manual configurations 
# sudo pacman -S openssh neovim
# sudo systemctl status sshd.service
# scp ~/.ssh/github/* joernih@192.168.0.31:~/.ssh/github
# git clone https://github.com/joernih/startupscriptJIH
# cd startupscriptJIH
#
# Github configurations
git config --global user.name "joernih"
git config --global user.email "jorn.halvorsen@gmail.com"
git config --global core.editor "neovim"
git config --global credential.helper 'cache --timeout=3600'
git config --list

# Package installation
## pacman
#sudo pacman -Syu --noconfirm
#sudo pacman -S --needed base-devel
#sudo pacman -S --needed - < packlist.txt 2>/dev/null
#sudo pacman -S yay --needed
#yay -S --noconfirm --needed - < yaylist.txt 2>/dev/null
#

## yay

## R

# Git clones

# Symlinks

