#!/bin/bash

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
