#!/bin/bash

echo -n "Enter the number of a release for Vagrant:\n"
echo -n "1) Ubuntu Server 18.04 \n"
echo -n "2) Ubuntu Server 16.04 \n"
echo -n "3) CentOS 7 \n"
read RELEASE


echo -n "You are select release of vagrant is "

if [ "$RELEASE" = '1' ];  then
   echo -n "ubuntu/bionic64\n";
#    export VAGRANT_RELEASE=ubuntu/bionic64;
   echo  "ubuntu/bionic64" > scripts/release.tmp
   VAGRANT_RELEASE='ubuntu/bionic64' vagrant up;
   exit 0;
elif [ "$RELEASE" = '2' ];  then
    echo -n "ubuntu/xenial64\n";
    echo  "ubuntu/xenial64" > scripts/release.tmp
    VAGRANT_RELEASE='ubuntu/xenial64' vagrant up;
    exit 0;
elif [ "$RELEASE" = '3' ];  then
    echo -n "centos/7\n";
    echo  "centos/7" > scripts/release.tmp
    VAGRANT_RELEASE='centos/7' vagrant up;
    exit 0;
  else
    echo -n "unknown";
    exit 0;
fi