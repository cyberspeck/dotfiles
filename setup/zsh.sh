#!/bin/bash

dir=~/dotfiles                    # dotfiles directory

install_oh-my-zsh () {
# Test to see if zshell is installed.  If it is:
if [ -f /bin/zsh -o -f /usr/bin/zsh ]; then
    # Clone my oh-my-zsh repository from GitHub only if it isn't already present
    if [[ ! -d $dir/oh-my-zsh/ ]]; then
        git clone http://github.com/robbyrussell/oh-my-zsh.git $dir/oh-my-zsh
    fi
    # Set the default shell to zsh if it isn't currently set to zsh
    if [[ ! $(echo $SHELL) == $(which zsh) ]]; then
        chsh -s $(which zsh)
        echo " Please log out/in again for zsh to be your default shell!"
    fi
else
    # If zsh isn't installed, get the platform of the current machine
    platform=$(uname);
    # If the platform is Linux, try an apt-get to install zsh and then recurse
    if [[ $platform == 'Linux' ]]; then
        if [[ -f /etc/debian_version ]]; then
            sudo apt-get install zsh
            install_oh-my-zsh
        fi
    fi
fi
}

install_oh-my-zsh

cd $dir/oh-my-zsh/plugins/
git rm -r zsh-syntax-highlighting -f
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git zsh-syntax-highlighting
cd $dir
chmod -R 755 oh-my-zsh
