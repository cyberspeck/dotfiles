#!/bin/bash

sudo apt install git zsh xclip python3-pip python3-wheel python3-dev ipython3 vim-gtk neovim build-essential cmake tmux tmuxp htop latexmk gnuplot gnuplot-doc ffmpeg imagemagick

sudo update-alternatives --install /usr/bin/python python /usr/bin/python2.7 1
sudo update-alternatives --install /usr/bin/python python /usr/bin/python3.6 2
