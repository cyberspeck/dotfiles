sudo apt-get install build-essential cmake
sudo apt-get install python-dev python3-dev
cd ~/.vim/pack/cyberspeck/start
git submodule add https://github.com/Valloric/YouCompleteMe.git YouCompleteMe
git submodule update --init --recursive
cd YouCompleteMe
./install.py --clang-completer
