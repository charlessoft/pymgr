#!/bin/bash
PIP_FILE=pip-6.0.8
tar zxvf ${PIP_FILE}.tar.gz
cd pip-6.0.8
python setup.py install
