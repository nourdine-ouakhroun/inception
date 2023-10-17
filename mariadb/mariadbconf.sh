#!/bin/sh
if [ -d  "/var/lib/mysql/db_wordpress" ]
then 
    echo "exist"
else

    echo "FLUSH PRIVILEGES;" >> /tmp/db.sql
    echo "ALTER USER 'root'@'localhost' IDENTIFIED BY 'PasSworD';" >> /tmp/db.sql
    echo "CREATE DATABASE ${DATABASE_NAME};" >> /tmp/db.sql
    echo "CREATE USER '${DATABASE_USER}'@'%' IDENTIFIED BY '${DATABASE_PASSWORD}';" >> /tmp/db.sql
    echo "GRANT ALL PRIVILEGES ON *.* TO '${DATABASE_USER}'@'%' WITH GRANT OPTION;" >> /tmp/db.sql
    echo "FLUSH PRIVILEGES;" >> /tmp/db.sql
    mariadbd --user=mysql --bootstrap < /tmp/db.sql
fi
exec "$@"