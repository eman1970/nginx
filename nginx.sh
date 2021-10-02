#!/bin/bash

# här upplyser jag användaren om att man behöver vara sudo eller root för att köra filen
if [ $(whoami) != root ]; then
echo "You are running as $(whoami). Please run as root or sudo!"
exit
fi

# här installerar jag nginx-servern

apt-get install nginx -y 

# Här kopierar jag och ersätter nginx-default start sida med min egen

cp -fr index.nginx-debian.html /var/www/html

