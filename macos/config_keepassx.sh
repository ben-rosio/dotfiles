#!/usr/bin/env bash

brew install qt cmake libgcrypt zlib libmicrohttpd qjson

cd /usr/local/source
git clone https://github.com/eugenesan/keepassx.git
cd keepassx

mkdir build; cd build

cmake .. -DCMAKE_INSTALL_PREFIX=$HOME/local/apps/keepassxhttp -DCMAKE_VERBOSE_MAKEFILE=ON

make && make install
