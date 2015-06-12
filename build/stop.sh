#!/bin/bash 
#kill `ps -ef | grep main.py`
if ps -ef  | grep "main.py" | grep -v "grep"
then
    kill `ps -ef | grep "main.py" | grep -v "grep" | awk '{print $2}'`
    if [ $? -eq 0 ]
    then
        echo "kill main.py ok"
    fi
else echo "not found main.py process"
fi
