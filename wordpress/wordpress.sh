#!/bin/sh


# ls "/var/www/html/wordpress/"
if [ -f "/var/www/html/wordpress/wp-config.php" ]
then 
    echo "exist"
    exec "$@"
    exit 0
fi

if [ ! -d "/usr/local/bin/WPCLI" ] 
then 
    curl -o /usr/local/bin/WPCLI https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
    chmod +x /usr/local/bin/WPCLI 
fi
if [ ! -d "/var/www/html/wordpress" ]
then
    mkdir -p /var/www/html/wordpress
    cd /var/www/html/wordpress
    WPCLI core download --allow-root
else
    cd /var/www/html/wordpress
    rm -rf *
    WPCLI core download --allow-root
fi

WPCLI config create --allow-root --dbname=${DATABASE_NAME} --dbuser=${DATABASE_USER} --dbpass=${DATABASE_PASSWORD} --dbhost=${DATABASE_HOST}

WPCLI core install --url=${WORDPRESS_URL} --title=${WORDPRESS_TITLE} --admin_user=${WORDPRESS_ROOT} --admin_password=${WORDPRESS_ROOT_PASSWORD} --admin_email=${WORDPRESS_ROOT_EMAIL} --allow-root

WPCLI user create ${WORDPRESS_USER_NAME} ${WORDPRESS_USER_EMAIL} --role=author  --user_pass=${WORDPRESS_USER_PASSWORD} --path=/var/www/html/wordpress --allow-root

WPCLI user create ${WORDPRESS_ADMIM_NAME} ${WORDPRESS_ADMIM_EMAIL} --role=administrator --user_pass=${WORDPRESS_ADMIM_PASSWORD} --path=/var/www/html/wordpress --allow-root
exec "$@"