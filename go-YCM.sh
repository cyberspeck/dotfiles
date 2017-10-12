sudo apt-get install build-essential cmake
sudo apt-get install python-dev python3-dev

cd vim
mkdir pack
cd pack
mkdir cyberspeck
cd cybersepck
mkdir start
cd start

git clone https://github.com/Valloric/YouCompleteMe.git YouCompleteMe
cd YouCompleteMe
git submodule update --init --recursive
./install.py --clang-completer
