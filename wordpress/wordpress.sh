#!/bin/sh

DIRECTORY=/var/www/html/wordpress

if [ -d "$DIRECTORY" ]
then 
    echo "exist"
else
    wget https://wordpress.org/latest.zip
    mkdir /var/www/
    unzip latest.zip -d /var/www/html/
fi

if [ ! -d "/usr/local/bin/WPCLI" ] 
then 
    curl -o /usr/local/bin/WPCLI https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
    chmod +x /usr/local/bin/WPCLI 
fi
exec "$@"