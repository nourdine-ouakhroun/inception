FROM debian:buster

RUN apt update -y && apt upgrade -y && apt install -y php php-curl php-fpm php-bcmath php-gd php-soap php-zip php-curl php-mbstring php-mysqlnd php-gd php-xml php-intl php-zip wget unzip mariadb-client \
    && sed -i "s|listen = /run/php/php7.3-fpm.sock|listen = 0.0.0.0:9000|g" /etc/php/7.3/fpm/pool.d/www.conf

COPY ./wordpress.sh /

RUN mkdir -p /run/php/

ENTRYPOINT ["sh", "wordpress.sh"]

CMD ["php-fpm7.3", "-F"]
