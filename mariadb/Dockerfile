FROM debian:bookworm

RUN apt update -y  && apt install mariadb-server -y

RUN mkdir -p /run/mysqld && chmod 777 /run/mysqld

RUN mariadb-install-db --user=mysql --datadir=/var/lib/mysql 

EXPOSE 3306

COPY ./mariadbconf.sh /

ENTRYPOINT ["sh", "mariadbconf.sh"]

CMD ["mariadbd", "--user=mysql", "--bind-address=0.0.0.0"]