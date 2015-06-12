#!/bin/bash 
. config.sh

function install_py()
{

    tar -zxvf ${FILENAME} -C ${PYTHON_DEST} 
    mv /usr/bin/python /usr/bin/python_old
    ln -sf ${PYTHON_DEST}/python27/bin/python2.7 /usr/bin/python 
    sed -i 's_#!/usr/bin/python_#!/usr/bin/python2.4_g' /usr/bin/yum
    echo "${PYTHON_DEST}/python27/syslib" >> /usr/ld.so.conf 
    ldconfig 

}

function install_oracle_client()
{
    #增加直接覆盖参数
    #判断是否写入/etc/profile
    mkdir ${DEST}/${ORACLECLIENT_DEST} -p
    #unzip ${ORACLE_CLIENT_BASIC_FILENAME} -d ${DEST}/${ORACLECLIENT_DEST}
    #unzip ${ORACLE_CLIENT_SDK_FILENAME} -d ${DEST}/${ORACLECLIENT_DEST}

    unzip ${ORACLE_CLIENT_BASIC_FILENAME} -d ${DEST}
    unzip ${ORACLE_CLIENT_SDK_FILENAME} -d ${DEST}

    cd ${DEST}/${ORACLECLIENT_DEST}
    export ORACLE_HOME=${PWD}/${ORACLECLIENT_DEST} 
    echo export ORACLE_HOME=${ORACLE_HOME} >> /etc/profile 
    echo export LD_LIBRARY_PATH='${ORACLE_HOME}' >> /etc/profile 
    echo export TNS_ADMIN='${ORACLE_HOME}'/network/admin >> /etc/profile



}

cd source
#install_py
install_oracle_client
cd ../
