#!/bin/bash
############################
# .make.sh
# This script sets up git
# installs
#   gnuplot tmux paraview trash-cli gimp ffmpeg
############################
sudo apt install git

git config --global user.name cyberspeck
git config --global user.email cyberspeck@users.noreply.github.com
git config --global push.default simple
git config --global credential.helper "cache --timeout=3600"
git config --global alias.co checkout
git config --global --add color.ui true

sudo apt install gnuplot gnuplot-doc
sudo apt install xclip
sudo apt install python-pip
sudo apt install python-setuptools
#pip install --user wheel
sudo apt install python-wheel
sudo apt install tmux
#pip install --user tmuxp
sudo apt install tmuxp
sudo apt install trash-cli
sudo apt install ffmpeg
sudo apt install htop
sudo apt install imagemagick
sudo apt install latexmk

#export PATH=$PATH:$HOME/.local/bin
