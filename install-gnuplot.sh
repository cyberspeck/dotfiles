# install gnuplot
wget https://sourceforge.net/projects/gnuplot/files/gnuplot/5.2.3/gnuplot-5.2.3.tar.gz
tar -xvzf gnuplot-5.2.3.tar.gz
cd gnuplot-5.2.3.tar.gz
./configure --prefix=/opt/gnuplot-5.2.3
make
sudo make install
cd ../
