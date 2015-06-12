#!/bin/bash 
#python
PYTHON_FILE=Python-2.7.8.tgz
PYTHON_FOLDER=Python-2.7.8 
PYTHON_LAST_VERSION=2.7.8
PYTHON_LAST_VERSION_NUM=`echo "${PYTHON_LAST_VERSION}" | awk -F '.' '{print $1$2$3}'`
PYTHON_CUR_VERSION_NUM=`python -V 2>&1 | awk '{print $2}' | awk -F '.' '{print $1$2$3}'`
echo ${PYTHON_CUR_VERSION_NUM}

function deal_python()
{
    #echo ${SOFTS_SRC}/${PYTHON_FILE}
    tar -zxvf ${PYTHON_FILE}
    cd ${PYTHON_FOLDER}
    mkdir /usr/local/python27 -p
    ./configure --prefix=/usr/local/python27 
    make 
    make install 
    mv /usr/bin/python /usr/bin/python_old
    ln -s /usr/local/python27/bin/python2.7 /usr/bin/python
    #修改yum /usr/bin/yum 
    #需要设置python 动态库路径 
    #vi /etc/ld.so.conf
    #/usr/local/python27/lib/

}

if [ "${PYTHON_CUR_VERSION_NUM}" -lt "${PYTHON_LAST_VERSION_NUM}" ]; then \
    echo "版本< ${PYTHON_LAST_VERSION} 更新版本";  \
    deal_python;
else
    echo "版本>=${PYTHON_LAST_VERSION}, 不更新";
fi

