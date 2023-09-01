#!/bin/bash

# Start MariaDB service
service mariadb start

# Create database
mysql -u root -e "CREATE DATABASE $MYSQL_DATABASE;"
mysql -u root -e "CREATE USER '$NEW_USER'@'%' IDENTIFIED BY '$PASSWORD';"
mysql -u root -e "GRANT ALL PRIVILEGES ON $MYSQL_DATABASE.* TO '$NEW_USER'@'%';"
mysql -u root -e "FLUSH PRIVILEGES;"

service mariadb stop

tail -f /dev/null