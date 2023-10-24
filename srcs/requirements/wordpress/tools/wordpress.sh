#!/bin/sh


if [ -f "/var/www/html/wordpress/wp-config.php" ]
then 
    echo "exist"
else

curl -o /usr/local/bin/WPCLI https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

chmod +x /usr/local/bin/WPCLI 

mkdir -p /var/www/html/wordpress

cd /var/www/html/wordpress

rm -rf *

WPCLI core download --allow-root

WPCLI config create --allow-root --dbname=${DATABASE_NAME} --dbuser=${DATABASE_USER} --dbpass=${DATABASE_PASSWORD} --dbhost=${DATABASE_HOST}

WPCLI core install --url=${WORDPRESS_URL} --title=${WORDPRESS_TITLE} --admin_user=${WORDPRESS_ADMIM_NAME} --admin_password=${WORDPRESS_ADMIM_PASSWORD} --admin_email=${WORDPRESS_ADMIM_EMAIL} --allow-root

WPCLI user create ${WORDPRESS_USER_NAME} ${WORDPRESS_USER_EMAIL} --role=author  --user_pass=${WORDPRESS_USER_PASSWORD} --path=/var/www/html/wordpress --allow-root

fi

exec "$@"