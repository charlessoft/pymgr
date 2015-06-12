#!/bin/bash 
LIBPATH=/libs
ZLIB_FILE=zlib-1.2.8.tar.gz
ZLIB_FOLDER=zlib-1.2.8
ZLIB_PATH=${LIBPATH}/zlib 
ZLIB_CPPFLAGS=${ZLIB_PATH}/include
ZLIB_LDFLAGS=${ZLIB_PATH}/lib
tar zxvf ${ZLIB_FILE}
echo "build zlib..."
cd ${ZLIB_FOLDER}; CFLAGS="-O3 -fPIC" ./configure --static
make 
make install 
cd ..
echo "zlib build ok"
