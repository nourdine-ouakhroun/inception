# FROM debian:buster//last stable
FROM debian:buster

RUN apt update -y  && apt install mariadb-server -y

RUN mkdir -p /run/mysqld && chmod 777 /run/mysqld


RUN mysql_install_db --user=mysql --datadir=/var/lib/mysql
# RUN mariadb-install-db --user=mysql --datadir=/var/lib/mysql 

# EXPOSE 3306

# COPY ./mariadbconf.sh /mariadbconf.sh

# ENTRYPOINT ["sh", "mariadbconf.sh"]

CMD ["mariadbd", "--user=mysql"]