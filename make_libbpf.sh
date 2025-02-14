#！/bin/sh

#source env.sh
cd libbpf-bootstrap/examples/c
export ARCH=arm64
export CROSS_COMPILE=aarch64-linux-gnu-
export EXTRA_CFLAGS="-fPIC -I /home/xxm/ebpf/elfutils-0.189/_install/include -I /home/xxm/ebpf/zlib-1.3.1/_install/include"
export EXTRA_LDFLAGS="-L /home/xxm/ebpf/elfutils-0.189/_install/lib -Wl,-rpath-link,/home/xxm/ebpf/elfutils-0.189/_install/lib -L /home/xxm/ebpf/zlib-1.3.1/_install/lib -Wl,-rpath-link,/home/xxm/ebpf/zlib-1.3.1/_install/lib"

export CC=aarch64-linux-gnu-gcc

make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- -j8
