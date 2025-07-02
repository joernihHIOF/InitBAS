sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}/nvim/site/autoload/plug.vim" --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
[ ! -d $HOME/.config/nvim ] && mkdir -p $HOME/.config/nvim 
[ ! -d $HOME/.config/hypr ] && mkdir -p $HOME/.config/hypr 
[ ! -d $HOME/.config/qtile ] && mkdir -p $HOME/.config/qtile 
ln -sf $HOME/InitBAS/config/bash/bashrc $HOME/.bashrc
ln -sf $HOME/InitBAS/config/zsh/zshrc $HOME/.zshrc
ln -sf $HOME/InitBAS/config/nvim/init.vim $HOME/.config/nvim/init.vim
ln -sf $HOME/InitBAS/config/r/Rprofile $HOME/.Rprofile
ln -sf $HOME/.environBAS $HOME/.Renviron
ln -sf $HOME/InitBAS/config/hyprland/hyprland.conf  $HOME/.config/hypr/hyprland.conf
ln -sf $HOME/InitBAS/config/hyprland/hyprpaper.conf $HOME/.config/hypr/hyprpaper.conf

#[ ! -d etc/issue ] && touch etc/issue
#touch: cannot touch 'etc/issue': No such file or directory
##ln -sf $HOME/InitJIH/config/tty1/issue etc/issue 
