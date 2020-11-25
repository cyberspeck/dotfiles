#!/bin/bash
############################
# This script installs anaconda
# and sets it up for use with vim-ipython
############################

echo -n "First, download and install Anaconda.."
# https://www.anaconda.com/download/#linux
cd ~/Downloads
wget https://repo.anaconda.com/archive/Anaconda3-5.2.0-Linux-x86_64.sh
bash Anaconda3-5.2.0-Linux-x86_64.sh

# echo -n "Now, create environment for jupyter.."
# conda install click colorama PyYAML
# conda create -n myenv pip juypter
# source activate myenv
# pip3 install jupyter --user

echo "c.ConsoleWidget.include_other_output = True" >> ~/.jupyter/jupyter_qtconsole_config.py
