#!/bin/bash

# install neovim
pip install ranger-fm

dot=~/dotfiles                    # dotfiles directory
dir=~/.config/ranger                # ranger config directory
dir_backup=~/.config/ranger_backup  # ranger config backup directory
files="rc.conf"                  # list of files/folders to symlink in homedir

echo -n "Creating $dir"
mkdir -p $dir
echo -n "Creating $dir_backup for backup"
mkdir -p $dir_backup
echo "done"

# move any existing config files in backup directory,
# then create symlinks to any files specified in $files
for file in $files; do
    echo "Moving any existing config files from $dir to $dir_backup"
    mv $dir/$file $dir_backup
    echo "Creating symlink to $file in $dir."
    ln -s $dot/$file $dir/$file
done
