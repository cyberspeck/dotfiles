#!/bin/bash

git submodule update --init --recursive

cd vim/pack/cyberspeck/start/YouCompleteMe
python install.py --clangd-completer

# generate help for all plugins
nvim "+helptags ALL" +q
