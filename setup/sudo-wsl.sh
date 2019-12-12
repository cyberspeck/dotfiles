#!/bin/bash

# for multiple processes
# https://github.com/Microsoft/WSL/issues/3397
echo 0 | sudo tee /proc/sys/kernel/yama/ptrace_scope

sudo apt-get install language-pack-en-base
# sudo dpkg-reconfigure locales

# fix for scaling issue in windows with Xming
# http://www.straightrunning.com/xmingnotes/fonts.php#head-17

# https://superuser.com/questions/1114341/windows-10-ubuntu-bash-shell-how-do-i-mount-other-windows-drives
# mount drive in wsl:
# sudo mkdir /mnt/d
# sudo mount -t drvfs D: /mnt/d
# unmount:
# sudo umount /mnt/d
