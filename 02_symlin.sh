[ ! -d $HOME/.config/nvim ] && mkdir -p $HOME/.config/nvim 
[ ! -d $HOME/.config/nvim/vim ] && mkdir -p $HOME/.config/nvim/vim
[ ! -d $HOME/.config/hypr ] && mkdir -p $HOME/.config/hypr 
[ ! -d $HOME/.config/qtile ] && mkdir -p $HOME/.config/qtile 

## Hyprland
cp -f config/hypr/monitors.conf               $HOME/.config/hypr/monitors.conf  
cp -f config/hypr/bindings.conf               $HOME/.config/hypr/bindings.conf  
# cp -f config/hypr/autostart.conf              $HOME/.config/hypr/autostart.conf 
# cp -f config/hypr/envs.conf                   $HOME/.config/hypr/envs.conf      
# cp -f config/hypr/hypridle.conf               $HOME/.config/hypr/hypridle.conf  
# cp -f config/hypr/hyprland.conf               $HOME/.config/hypr/hyprland.conf  
# cp -f config/hypr/hyprlock.conf               $HOME/.config/hypr/hyprlock.conf  
# cp -f config/hypr/hyprsunset.conf             $HOME/.config/hypr/hyprsunset.conff
# cp -f config/hypr/input.conf                  $HOME/.config/hypr/input.conf     
# cp -f config/hypr/looknfeel.conf              $HOME/.config/hypr/looknfeel.conf 
## Vim
cp $HOME/InitBAS/config/nvim/vim/init.vim  $HOME/.config/nvim/vim/init.vim
cp $HOME/InitBAS/config/nvim/vim/keymapping.vim  $HOME/.config/nvim/vim/keymapping.vim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}/nvim/site/autoload/plug.vim" --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
## Neovim
cp $HOME/InitBAS/config/nvim/init.lua      $HOME/.config/nvim/init.lua
cp -r $HOME/InitBAS/config/nvim/lua/config    $HOME/.config/nvim/lua/config
cp -r $HOME/InitBAS/config/nvim/lua/plugins   $HOME/.config/nvim/lua
### Bash
cp $HOME/InitBAS/config/bash/bashrc         $HOME/.bashrc
### R
cp $HOME/InitBAS/config/r/Rprofile          $HOME/.Rprofile
cp $HOME/.environBAS                        $HOME/.Renviron
