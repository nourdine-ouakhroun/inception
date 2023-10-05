#!/bin/sh

DIRECTORY=/var/www/html
if [ -d "$DIRECTORY" ]
then 
    echo "exist"
else
    wget https://wordpress.org/latest.zip
    mkdir /var/www/
    unzip latest.zip -d /var/www/html/
fi
exec "$@"