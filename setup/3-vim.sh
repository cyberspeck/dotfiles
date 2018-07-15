#!/bin/bash
############################
# .make.sh
# This script installs vim and plug-ins
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

git clone https://github.com/Valloric/YouCompleteMe.git YouCompleteMe
cd YouCompleteMe
git submodule update --init --recursive
./install.py --clang-completer
