#!/bin/bash

# Function to clone repository if it doesn't exist
clone_if_not_exists() {
    repo_url="$1"
    target_dir="$2"
    
    if [ ! -d "$target_dir" ]; then
        git clone --depth 1 "$repo_url" "$target_dir"
    else
        echo "Directory $target_dir already exists. Skipping clone."
    fi
}
# clone_if_not_exists "https://github.com/makccr/wallpapers" "$HOME/.config/wallpapers/github"

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}/nvim/site/autoload/plug.vim" --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'


