#!/bin/bash

mkdir -p /var/www/html/wordpress

mkdir -p /run/php

cd /var/www/html/wordpress

rm -rf *

wp core download --allow-root

sleep 5

wp config create --dbname=${DB} --dbuser=${NEWUSER} --dbpass=${PSWD}  --dbhost=${DB_HOST} --dbprefix=wp --allow-root

wp core install --url=${DOMAIN_NAME} --title=${WP_TITLE} --admin_user=${NEWUSER} --admin_password=${PSWD} --admin_email=${WP_EMAIL} --allow-root

wp user create ${NU} ${NU_EMAIL} --role=${NU_ROLE} --first_name=${NU_FIRSTNAME} --last_name=${NU_LASTNAME} --user_pass=${NU_PSWDw} --allow-root

php-fpm7.4 -R -F
