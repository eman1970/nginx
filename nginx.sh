#!/bin/bash

if [ $(whoami) != root ]; then
echo "You are running as $(whoami). Please run as root or sudo!"
exit
fi

apt-get install nginx -y 

cp -fr index.nginx-debian.html /var/www/html

