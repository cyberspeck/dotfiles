#!/bin/bash

########## Variables
dir=~/dotfiles                    # dotfiles directory
dir_backup=~/dotfiles_backup      # old dotfiles backup directory
files="gitconfig bashrc vimrc vim zshrc oh-my-zsh tmux.conf"    # list of files/folders to symlink in homedir
##########

# create dotfiles_backup in homedir
echo -n "Creating $dir_backup for backup of any existing dotfiles in ~ ..."
mkdir -p $dir_backup
echo "done"

# change to the dotfiles directory
echo -n "Changing to the $dir directory ..."
cd $dir
echo "done"

# move any existing dotfiles in homedir to dotfiles_backup directory, then create symlinks from the homedir to any files in the ~/dotfiles directory specified in $files
for file in $files; do
    echo "Moving any existing dotfiles from ~ to $dir_backup"
    mv ~/.$file $dir_backup
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/.$file
done
