[ ! -d $HOME/.config/nvim ] && mkdir -p $HOME/.config/nvim 
[ ! -d $HOME/.config/hypr ] && mkdir -p $HOME/.config/hypr 
[ ! -d $HOME/.config/qtile ] && mkdir -p $HOME/.config/qtile 
ln -sf $HOME/InitBAS/config/bash/bashrc $HOME/.bashrc
ln -sf $HOME/InitBAS/config/zsh/zshrc $HOME/.zshrc
ln -sf $HOME/InitBAS/config/nvim/init.vim $HOME/.config/nvim/init.vim
ln -sf $HOME/InitBAS/config/r/Rprofile $HOME/.Rprofile
ln -sf $HOME/InitBAS/config/r/Renviron $HOME/.Renviron
ln -sf $HOME/InitBAS/config/hyprland/hyprland.conf  $HOME/.config/hypr/hyprland.conf
ln -sf $HOME/InitBAS/config/hyprland/hyprpaper.conf $HOME/.config/hypr/hyprpaper.conf
ln -sf $HOME/InitBAS/config/hyprland/config.ini ~/.config/waypaper/config.ini
