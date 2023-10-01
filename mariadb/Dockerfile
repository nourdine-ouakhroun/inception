From alpine:3.18.3

RUN apk update && apk add mariadb mariadb-client
RUN mkdir -p /run/mysqld && chmod 777 /run/mysqld
RUN mariadb-install-db --user=mysql --datadir=/var/lib/mysql

# CMD ["ls", "-la", "/var/run/mysqld"]
CMD ["mariadbd", "--user=root"]