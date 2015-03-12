#!/bin/bash 
#. config
DEST=/usr/local
FILENAME=python27_clean.tar.gz
function install_py()
{

    tar -zxvf ${FILENAME} -C ${DEST} 
    mv /usr/bin/python /usr/bin/python_old
    ln -sf ${DEST}/python27/bin/python2.7 /usr/bin/python 
    sed -i 's_#!/usr/bin/python_#!/usr/bin/python2.4_g' /usr/bin/yum
    echo "${DEST}/python27/syslib" >> /usr/ld.so.conf 
    ldconfig 



}
cd source
install_py
cd ../
