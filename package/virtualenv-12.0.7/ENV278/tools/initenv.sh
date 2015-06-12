#!/bin/bash 
SCRIPT=`basename $0`
export CURPWD=$(cd `dirname $0`; pwd)
export ORACLE_HOME=${CURPWD}/instantclient_11_2
#export LD_LIBRARY_PATH=$ORACLE_HOME
#export TNS_ADMIN=$ORACLE_HOME/network/admin
echo ORACLE_HOME=${CURPWD}/instantclient_11_2 >env.sh

echo export ORACLE_HOME=${ORACLE_HOME} > env.sh
echo export LD_LIBRARY_PATH='${ORACLE_HOME}' >> env.sh
echo export TNS_ADMIN='${ORACLE_HOME}'/network/admin >> env.sh
#echo LD_LIBRARY_PATH=$ORACLE_HOME >> env.sh 
#echo TNS_ADMIN=${ORACLE_HOME}/network/admin >> env.sh


#echo JAVA_HOME=$JAVA_HOME
#echo JAVA_BIN=$JAVA_BIN
#echo PATH=$PATH
#echo CLASSPATH=$CLASSPATH
#echo JMETER_HOME=$JMETER_HOME

#echo export JAVA_HOME=$JAVA_HOME >> /etc/profile
#echo export JAVA_BIN=$JAVA_HOME/bin >> /etc/profile
#echo export M2_HOME=/usr/local/apache-maven >> /etc/profile
#echo export SVN_HOME=/usr/local/svn >> /etc/profile
#echo export JMETER_HOME=/usr/local/jmeter >> /etc/profile
#echo export SONAR_RUNNER_HOME=$SONAR_RUNNER_HOME >> /etc/profile
