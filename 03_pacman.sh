#!/bin/bash
## Pacman
#echo 'pacman starter'
sudo pacman -Sy archlinux-keyring --needed
sudo pacman -S --needed base-devel --noconfirm
sudo pacman -Syu --noconfirm
sudo pacman -Sy fastfetch --needed
sudo pacman -S --noconfirm --needed --noconfirm - < ~/InitBAS/packages/pckfull.txt 2>/dev/null
#
#### Yay
yay -Syu --noconfirm
yay -S   --noconfirm --needed --noconfirm - < ~/InitBAS/packages/yayfull.txt 2>/dev/null

