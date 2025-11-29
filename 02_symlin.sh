[ ! -d $HOME/.config/nvim ] && mkdir -p $HOME/.config/nvim 
[ ! -d $HOME/.config/nvim/vim ] && mkdir -p $HOME/.config/nvim/vim
[ ! -d $HOME/.config/hypr ] && mkdir -p $HOME/.config/hypr 
[ ! -d $HOME/.config/qtile ] && mkdir -p $HOME/.config/qtile 

## Neovim
cp $HOME/InitBAS/config/nvim/init.lua      $HOME/.config/nvim/init.lua
cp -r $HOME/InitBAS/config/nvim/lua/config    $HOME/.config/nvim/lua
cp -r $HOME/InitBAS/config/nvim/lua/plugins   $HOME/.config/nvim/lua
# ln -sf config/hypr/autostart.conf              $HOME/.config/hypr/autostart.conf 
# ln -sf config/hypr/envs.conf                   $HOME/.config/hypr/envs.conf      
# ln -sf config/hypr/hypridle.conf               $HOME/.config/hypr/hypridle.conf  
# ln -sf config/hypr/hyprland.conf               $HOME/.config/hypr/hyprland.conf  
# ln -sf config/hypr/hyprlock.conf               $HOME/.config/hypr/hyprlock.conf  
# ln -sf config/hypr/hyprsunset.conf             $HOME/.config/hypr/hyprsunset.conff
# ln -sf config/hypr/input.conf                  $HOME/.config/hypr/input.conf     
# ln -sf config/hypr/looknfeel.conf              $HOME/.config/hypr/looknfeel.conf 
## Vim
cp $HOME/InitBAS/config/nvim/vim/init.vim  $HOME/.config/nvim/vim/init.vim
cp $HOME/InitBAS/config/nvim/vim/keymapping.vim  $HOME/.config/nvim/vim/keymapping.vim
## Neovim
cp $HOME/InitBAS/config/nvim/init.lua      $HOME/.config/nvim/init.lua
cp -r $HOME/InitBAS/config/nvim/lua/config    $HOME/.config/nvim/lua/config
cp -r $HOME/InitBAS/config/nvim/lua/plugins   $HOME/.config/nvim/lua/plugins
### Bash
cp $HOME/InitBAS/config/bash/bashrc         $HOME/.bashrc
### R
cp $HOME/InitBAS/config/r/Rprofile          $HOME/.Rprofile
cp $HOME/.environBAS                        $HOME/.Renviron

