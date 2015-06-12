#!/bin/bash
SCRIPT=`basename $0`
export CURPWD=$(cd `dirname $0`; pwd)
cd ${CURPWD}
cd ./tools/ 
sh initenv.sh 
. ./env.sh 

cd ../ 
. ./bin/activate
#sh ./tools/initenv.sh  
#. ./tools/env.sh
#pip list
nohup python main.py > nohup.file 2>&1 &

##!/bin/bash
#. ./bin/activate
#pip list
#python main.py

