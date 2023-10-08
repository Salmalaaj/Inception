#!/bin/bash

service mariadb start

mariadb -u root -e "CREATE DATABASE wordpress;"
mariadb -u root -e "CREATE USER '$NEWUSER'@'%' IDENTIFIED BY '$PSWD';"
mariadb -u root -e "GRANT ALL PRIVILEGES ON *.* TO '$NEWUSER'@'%';"
mariadb -u root -e "FLUSH PRIVILEGES;"

service mariadb stop

mariadbd
