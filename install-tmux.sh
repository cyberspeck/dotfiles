# http://www.simunano.com/2015/06/how-to-install-tmux-on-fedora.html
# Install libevent first:
wget https://github.com/downloads/libevent/libevent/libevent-2.0.21-stable.tar.gz
tar -xvzf libevent-2.0.21-stable.tar.gz
cd libevent-2.0.21-stable
./configure --prefix=/opt/tmux
make
sudo make install
cd ../

# Secondly, install ncurses:
wget ftp://ftp.gnu.org/gnu/ncurses/ncurses-6.1.tar.gz
tar -xvzf ncurses-6.1.tar.gz
cd ncurses-6.1/
./configure --prefix=/opt/tmux
make
sudo make install
cd ../

# Now, install tmux:
wget https://github.com/tmux/tmux/releases/download/2.7/tmux-2.7.tar.gz
tar -xvzf tmux-2.7.tar.gz
cd tmux-2.7
./configure --prefix=/opt/tmux CFLAGS="-I/opt/tmux/include -I/opt/tmux/include/ncurses" LDFLAGS="-L/opt/tmux/lib -L/opt/tmux/include/ncurses -L/opt/tmux/include"
make
sudo make install
cd ../
