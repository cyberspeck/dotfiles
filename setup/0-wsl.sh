# for multiple processes
# https://github.com/Microsoft/WSL/issues/3397
echo 0 | sudo tee /proc/sys/kernel/yama/ptrace_scope

sudo apt-get install language-pack-en-base
# sudo dpkg-reconfigure locales

# fix for scaling issue in windows with Xming
# http://www.straightrunning.com/xmingnotes/fonts.php#head-17
