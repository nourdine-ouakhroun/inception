#!/bin/sh

# echo "ALTER USER 'root'@'localhost' IDENTIFIED BY '1001';" >> /tmp/db.sql
echo "CREATE DATABASE nourdin;" >> /tmp/db.sql
echo "CREATE USER 'nourdine'@'localhost' IDENTIFIED BY 'nourdine';" >> /tmp/db.sql
echo "GRANT ALL PRIVILEGES ON *.* TO 'nourdine'@'localhost' WITH GRANT OPTION;" >> /tmp/db.sql
echo "FLUSH PRIVILEGES;" >> /tmp/db.sql
# echo "Select user from mysql.user;" >> /tmp/db.sql
# # echo "mysql -u tester -p" >>  /tmp/db.sql
cat /tmp/db.sql
mysqld --user=mysql --bootstrap < /tmp/db.sql
exec "$@"