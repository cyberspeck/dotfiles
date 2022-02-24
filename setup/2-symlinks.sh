#!/bin/bash

########## Variables
dot=~/dotfiles/conf
dir_backup=~/dotfiles_backup
files="bashrc gitconfig tmux.conf tvrc vim vimrc zshrc"    # list of files/folders to symlink in homedir
##########

echo -n "Creating $dir_backup for any existing dotfiles"
mkdir -p $dir_backup
echo "done"

for file in $files; do
    echo "Moving any existing $file from ~ to $dir_backup"
    mv ~/.$file $dir_backup
    echo "Creating symlink to $file in home directory."
    ln -s $dot/$file ~/.$file
done

# make sure .config dirs exist
mkdir -p ~/.config/ranger
mkdir -p ~/.config/nvim

mv ~/.config/ranger/rc.conf $dir_backup
mv ~/.config/nvim/init.vim $dir_backup
ln -s $dot/rc.conf ~/.config/ranger/rc.conf
ln -s $dot/init.vim ~/.config/nvim/init.vim
