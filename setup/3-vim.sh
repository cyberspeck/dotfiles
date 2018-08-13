#!/bin/bash
############################
# .make.sh
# This script installs vim, neovim and plug-ins
# https://github.com/Valloric/YouCompleteMe/wiki/Building-Vim-from-source
############################

sudo apt install vim-gtk

sudo apt-get install build-essential cmake
sudo apt-get install python-dev python3-dev
# maybe also need for:?
# sudo apt install libclang

cd ~/dotfiles
cd vim
mkdir pack
cd pack
mkdir cyberspeck
cd cyberspeck
mkdir start
cd start

git clone https://github.com/wilywampa/vim-ipython.git
git clone https://github.com/christoomey/vim-tmux-navigator.git
git clone https://github.com/tpope/vim-fugitive.git
vim -u NONE -c "helptags vim-fugitive/doc" -c q
git clone https://github.com/vim-airline/vim-airline.git
git clone https://github.com/lervag/vimtex.git

git clone https://github.com/Valloric/YouCompleteMe.git YouCompleteMe
cd YouCompleteMe
git submodule update --init --recursive
./install.py --clang-completer


# install neovim

sudo apt install neovim
pip install neovim


dot=~/dotfiles                    # dotfiles directory
dir=~/.config/nvim                # nvim config directory
dir_backup=~/.config/nvim_backup  # nvim config backup directory
files="init.vim"                  # list of files/folders to symlink in homedir

echo -n "Creating $dir"
mkdir -p $dir
echo -n "Creating $dir_backup for backup"
mkdir -p $dir_backup
echo "done"

# move any existing config files in backup directory,
# then create symlinks to any files specified in $files
for file in $files; do
    echo "Moving any existing config files from $dir to $dir_backup"
    mv $dir/$file $dir_backup
    echo "Creating symlink to $file in $dir."
    ln -s $dot/$file $dir/$file
done
