#!/bin/sh

set -x
cd repos/openvpn-2.4.9
autoreconf -i -f -v
./configure --prefix=/usr/local/openvpn --enable-debug OPENSSL_CFLAGS="-I/home/b43s/qkd-work/openssl-install/openssl/include" OPENSSL_LIBS="-L/home/b43s/qkd-work/openssl-install/openssl/lib -Wl,-rpath=/usr/local/openvpn/lib  -lssl -lcrypto -lopenqkd -lcurl -ljson-c"
make clean
make
make DESTDIR=/home/b43s/openvpn-openquantumsafe/PQCrypto-VPN/openvpn/build/stage-openqkd install

