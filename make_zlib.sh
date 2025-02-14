source ./prepare.sh
cd zlib-1.3.1
export CC=aarch64-linux-gnu-gcc
./configure --prefix=$PWD/_install
make -j8
make install
