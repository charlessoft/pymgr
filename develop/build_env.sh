#!/bin/bash 
sed -i 's/VIRTUAL_ENV=.*/VIRTUAL_ENV=`pwd`/g' ../bin/activate
cd ../
python ../virtualenv.py --relocatable ./
cd ../
#tar zcvfh env278.tar.gz ./ENV278
echo "zip 打包"
