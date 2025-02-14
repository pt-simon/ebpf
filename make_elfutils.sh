#source ./env.sh
cd elfutils-0.189

export CFLAGS="-fPIC -I /home/xxm/ebpf/zlib-1.3.1/_install/include"
export LDFLAGS="-L /home/xxm/ebpf/zlib-1.3.1/_install/lib -Wl,-rpath-link,/home/xxm/ebpf/zlib-1.3.1/_install/lib"
./configure --prefix=$PWD/_install --build=x86_64-linux-gnu \
        --host=aarch64-linux-gnu \
    CC=aarch64-linux-gnu-gcc CXX=aarch64-linux-gnu-g++ \
    --disable-nls --disable-rpath --disable-libdebuginfod --disable-debuginfod \
    --with-zlib=/home/xxm/ebpf/zlib-1.3.1/_install/lib
make -j8
make install
