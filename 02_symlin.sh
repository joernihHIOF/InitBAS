# [ ! -d etc/issue ] && sudo touch /etc/issue
[ ! -d $HOME/.config/nvim ] && mkdir -p $HOME/.config/nvim 
[ ! -d $HOME/.config/hypr ] && mkdir -p $HOME/.config/hypr 
[ ! -d $HOME/.config/qtile ] && mkdir -p $HOME/.config/qtile 
# sudo ln -sf $HOME/InitBAS/config/tty1/issue /etc/issue 

# ln -sf $HOME/InitBAS/config/hyprland/hyprland.conf  $HOME/.config/hypr/hyprland.conf
# ln -sf $HOME/InitBAS/config/hyprland/hyprpaper.conf $HOME/.config/hypr/hyprpaper.conf
ln -sf $HOME/InitBAS/config/nvim/init.lua $HOME/.config/nvim/init.lua
ln -sf $HOME/InitBAS/config/bash/bashrc $HOME/.bashrc
ln -sf $HOME/InitBAS/config/r/Rprofile $HOME/.Rprofile
ln -sf $HOME/.environBAS $HOME/.Renviron


