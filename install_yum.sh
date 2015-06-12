#!/bin/bash 
rpm -qa|grep yum
rpm -e yum-3.2.22-20.el5 --nodeps 
rpm -e yum-updatesd-0.9-2.el5 --nodeps 
rpm -e yum-security-1.1.16-13.el5 --nodeps 
rpm -e yum-metadata-parser-1.1.2-3.el5 --nodeps 
rpm -e yum-rhn-plugin-0.5.4-13.el5 --nodeps 
cp ./RPM-GPG-KEY-CentOS-5 /etc/pki/rpm-gpg
#cd /etc/pki/rpm-gpg/
rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY* 

rpm -ivh yum-3.2.22-40.el5.centos.noarch.rpm \
    yum-fastestmirror-1.1.16-21.el5.centos.noarch.rpm \
    yum-metadata-parser-1.1.2-4.el5.x86_64.rpm
mv /etc/yum.repos.d/rhel-debuginfo.repo  /etc/yum.repos.d/rhel-debuginfo.repo.bak

cp repo.txt /etc/yum.repos.d/rhel-debuginfo.repo 
yum clean all
yum install vim
