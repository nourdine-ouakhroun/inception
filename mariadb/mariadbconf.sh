#!/bin/sh

echo "CREATE DATABASE nourdin;" >> /tmp/db.sql
# echo "FLUSH PRIVILEGES;" >> /tmp/db.sql
cat /tmp/db.sql
mysqld --user=mysql --bootstrap < /tmp/db.sql
# SHOW DATA BASE
exec "$@"