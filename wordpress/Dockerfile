FROM debian:buster

RUN apt update -y && apt upgrade -y && apt install -y php php-curl php-fpm php-bcmath php-gd php-soap php-zip php-curl php-mbstring php-mysqlnd php-gd php-xml php-intl php-zip wget unzip mariadb-client

COPY ./wordpress.sh /

RUN mkdir /run/php/
ENTRYPOINT ["sh", "wordpress.sh"]

CMD ["php-fpm7.3", "-F"]
