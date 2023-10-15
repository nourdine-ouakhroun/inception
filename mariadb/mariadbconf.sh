#!/bin/sh
if [ -d  "/var/lib/mysql/nourdin" ]
then 
    echo "exist"
else

    echo "FLUSH PRIVILEGES;" >> /tmp/db.sql
    echo "ALTER USER 'root'@'localhost' IDENTIFIED BY 'MyN3wP4ssw0rd';" >> /tmp/db.sql
    echo "CREATE DATABASE nourdin;" >> /tmp/db.sql
    echo "CREATE USER 'nourdine'@'localhost' IDENTIFIED BY 'nourdine';" >> /tmp/db.sql
    echo "GRANT ALL PRIVILEGES ON *.* TO 'nourdine'@'localhost' WITH GRANT OPTION;" >> /tmp/db.sql
    echo "FLUSH PRIVILEGES;" >> /tmp/db.sql
    mariadbd --user=mysql --bootstrap < /tmp/db.sql
fi
exec "$@"