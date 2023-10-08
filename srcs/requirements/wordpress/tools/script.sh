#!/bin/bash

mkdir -p /var/www/html/wordpress

mkdir -p /run/php

cd /var/www/html/wordpress

rm -rf *

wp core download --allow-root

sleep 5

wp config create --dbname=${DATABASE} --dbuser=${NEWUSER} --dbpass=${PSWD}  --dbhost=${DB_HOST} --dbprefix=wp --allow-root

wp core install --url=${DOMAIN_NAME} --title=${WP_TITLE} --admin_user=${NEWUSER} --admin_password=${PSWD} --admin_email=${WP_EMAIL} --allow-root

wp user create ${NEWUSER_USER} ${NEWUSER_EMAIL} --role=${NEWUSER_ROLE} --first_name=${NEWUSER_FIRSTNAME} --last_name=${NEWUSER_LASTNAME} --user_pass=${NEWUSER_PASS} --allow-root

php-fpm7.4 -R -F
