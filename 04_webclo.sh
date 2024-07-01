#!/bin/bash

# Function to clone repository if it doesn't exist
clone_if_not_exists() {
    repo_url="$1"
    target_dir="$2"
    
    if [ ! -d "$target_dir" ]; then
        git clone "$repo_url" "$target_dir"
    else
        echo "Directory $target_dir already exists. Skipping clone."
    fi
}

# Clone repositories
clone_if_not_exists "https://github.com/joernih/homepageJIH" "$HOME/homepageJIH"
# Teaching
clone_if_not_exists "https://github.com/joernih/OEKA201ProgrammingWebPage.git" "$HOME/teaching/OEKA201ProgrammingWebPage"
clone_if_not_exists "https://github.com/joernih/SFB30820Finansteori" "$HOME/teaching/SFB30820Finansteori"
clone_if_not_exists "https://github.com/joernih/SFB10916Makrooekonomi" "$HOME/teaching/SFB10916Makrooekonomi"
clone_if_not_exists "https://github.com/joernih/SFB10816Mikrooekonomi" "$HOME/teaching/SFB10816Mikrooekonomi"
clone_if_not_exists "https://github.com/joernih/OEKA201ProgrammingWebPage"
# Inwp
clone_if_not_exists "https://github.com/joernih/NKI" "$HOME/intwebp/NKI"
clone_if_not_exists "https://github.com/joernih/Musikk" "$HOME/intwebp/Musikk"
clone_if_not_exists "https://github.com/joernih/Bacheloroppgaven" "$HOME/intwebp/Bacheloroppgaven"
# Research
clone_if_not_exists "https://github.com/joernih/Hyperinflation" $HOME/research/Hyperinflation"


sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

if [ ! -e ~/.environJIH ]; then                                                                              
    touch ~/.environJIH                                                                                      
fi                                                                                                        


