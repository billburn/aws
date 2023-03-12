#!/bin/bash
apt-get update
apt-get upgrade -y
apt-get install awscli -y
apt-get install apache2 -y
systemctl start apache2
apt-get install git
apt-get -y install binutils
cd /home/ubuntu
git clone https://github.com/aws/efs-utils /home/ubuntu/efs-utils
cd /home/ubuntu/efs-utils
./build-deb.sh
dpkg -i ./build/amazon-efs-utils*deb