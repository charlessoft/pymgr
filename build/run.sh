#!/bin/bash
. ./bin/activate
pip list
nohup python main.py > nohup.file 2>&1 &
