wget http://ftp.gnu.org/gnu/screen/screen-4.2.1.tar.gz
tar -xzf screen-4.2.1.tar.gz
rm screen-4.2.1.tar.gz
cd screen-4.2.1
./configure && make && sudo make install
cd ..
rm -r screen-4.2.1
