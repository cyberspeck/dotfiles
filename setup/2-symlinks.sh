#!/bin/bash

########## Variables
dot=~/dotfiles
dir_backup=~/dotfiles_backup
files="gitconfig bashrc vimrc vim zshrc oh-my-zsh tmux.conf"    # list of files/folders to symlink in homedir
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

mv ~/.config/ranger/rc.conf $dir_backup
mv ~/.config/nvim/init.vim $dir_backup
ln -s $dot/$file ~/.config/ranger/rc.conf
ln -s $dot/$file ~/.config/nvim/init.vim
