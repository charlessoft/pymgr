# -*- coding: UTF-8 -*-
import time
import sys
reload(sys)
sys.setdefaultencoding('utf-8')
import os
os.environ['NLS_LANG'] = 'SIMPLIFIED CHINESE_CHINA.UTF8'
from oracle_client.oracle_helper import *
from agent_face import *
def run():
    fileres = sys.path[0] + '/dataset.txt'
    oracle_helper = COracle_helper('dms','dms','10.142.51.201','orcl')

    dt_business  = oracle_helper.search_execx(r"select distinct ecm_type.TYPE_ID,ecm_type.TYPE_NAME from ecm_type, ecm_type_attr where ecm_type_attr.Type_Id = ecm_type.TYPE_ID and ecm_type.TYPE_ID != '1'")


    #item = [row for row in dt_business if row[0] != 1]

    for item in dt_business:
        print item[1]
    #upload('/Users/zhy/Downloads/生育津贴结算申请表.1.doc', '/2015/pythontest')
    #print upload('/root/pymgr/package/virtualenv-12.0.7/ENV278/agent_face.doc' ,'/2015/agent_face.doc')

    #print fileres
    #print download('090f1b31800066e6','/tmp/aaa.doc')
    #open(fileres,'wb').write(str(item))

run()
