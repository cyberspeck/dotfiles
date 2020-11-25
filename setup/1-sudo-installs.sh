#!/bin/bash

sudo add-apt-repository ppa:neovim-ppa/stable 
sudo add-apt-repository ppa:inkscape.dev/stable

sudo apt install python3-pip python3-wheel python3-dev
sudo apt install build-essential gcc-8 g++-8 cmake 
sudo apt install neovim
sudo apt install git zsh xclip tmux tmuxp synaptic htop latexmk gnuplot gnuplot-doc ffmpeg imagemagick inkscape

sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-8 800 --slave /usr/bin/g++ g++ /usr/bin/g++-8
