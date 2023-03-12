#!/bin/bash
apt-get update
apt-get upgrade -y
apt-get install awscli -y
apt-get install apache2 -y
systemctl start apache2 
cd /var/www/html/
echo "<html><h1>Hello World</h1></html>" > /var/www/html/index.html
aws s3 mb s3://seclab-test-01
aws s3 cp index.html s3://seclab-test-01