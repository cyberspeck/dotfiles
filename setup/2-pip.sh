#!/bin/bash

# Things that should be installed using pip:
pip install grip --user
pip install tv2 --user
# update these things:
pip install --upgrade grip
pip install --upgrade tv2


# if apt install does not work
#pip install ranger-fm --user

# if conda is not used:
#pip install ipython --user

# is this even necessary?
#python2 -m pip install --user --upgrade pynvim
python3 -m pip install --user --upgrade pynvim
python3 -m pip install --user --upgrade neovim-remote
