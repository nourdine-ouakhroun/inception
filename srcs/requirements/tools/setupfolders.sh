#!/bin/sh

mkdir -p /home/${USER}/data/wordpress
mkdir -p /home/${USER}/data/database

if [ ! -f "srcs/.env" ]
then

echo "
#DATABASE VARIABLES

DATABASE_NAME = db_name
DATABASE_USER = user_name_db
DATABASE_PASSWORD = ****
DATABASE_HOST = mariadb_host

#WORDPRESS VARIABLES

WORDPRESS_USER_NAME = user_name_wp
WORDPRESS_USER_PASSWORD = ****
WORDPRESS_USER_EMAIL = user@gmail.com


WORDPRESS_TITLE = title_of_set
WORDPRESS_URL = websiteurl
WORDPRESS_ADMIM_NAME = admin_user
WORDPRESS_ADMIM_PASSWORD = ****
WORDPRESS_ADMIM_EMAIL = admin@gmail.com

" > srcs/.env
fi