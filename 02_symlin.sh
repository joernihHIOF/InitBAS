# [ ! -d etc/issue ] && sudo touch /etc/issue
[ ! -d $HOME/.config/nvim ] && mkdir -p $HOME/.config/nvim 
[ ! -d $HOME/.config/hypr ] && mkdir -p $HOME/.config/hypr 
[ ! -d $HOME/.config/qtile ] && mkdir -p $HOME/.config/qtile 
# sudo ln -sf $HOME/InitBAS/config/tty1/issue /etc/issue 

#
## Hyprland
# ln -sf config/hypr/autostart.conf              $HOME/.config/hypr/autostart.conf 
# ln -sf config/hypr/bindings.conf               $HOME/.config/hypr/bindings.conf  
# ln -sf config/hypr/envs.conf                   $HOME/.config/hypr/envs.conf      
# ln -sf config/hypr/hypridle.conf               $HOME/.config/hypr/hypridle.conf  
# ln -sf config/hypr/hyprland.conf               $HOME/.config/hypr/hyprland.conf  
# ln -sf config/hypr/hyprlock.conf               $HOME/.config/hypr/hyprlock.conf  
# ln -sf config/hypr/hyprsunset.conf             $HOME/.config/hypr/hyprsunset.conff
# ln -sf config/hypr/input.conf                  $HOME/.config/hypr/input.conf     
# ln -sf config/hypr/looknfeel.conf              $HOME/.config/hypr/looknfeel.conf 
# ln -sf config/hypr/monitors.conf               $HOME/.config/hypr/monitors.conf  
## Neovim
ln -sf $HOME/InitBAS/config/nvim/nvim/vim/init.vim  $HOME/.config/nvim/vim/init.vim
#ln -sf $HOME/InitBAS/config/nvim/init.lua      $HOME/.config/nvim/init.lua
## Bash
ln -sf $HOME/InitBAS/config/bash/bashrc         $HOME/.bashrc
## R
ln -sf $HOME/InitBAS/config/r/Rprofile          $HOME/.Rprofile
# ln -sf $HOME/.environBAS                       $HOME/.Renviron


