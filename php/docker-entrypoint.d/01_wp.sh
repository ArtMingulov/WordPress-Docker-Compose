#!/bin/bash

gosu 33:33 wp-cli core download --locale=ru_RU
gosu 33:33 wp-cli config create --dbname=${MYSQL_DATABASE} --dbuser=${MYSQL_USER} --dbpass=${MYSQL_PASSWORD} --dbhost=172.27.0.4
gosu 33:33 wp-cli core install --url=${DOMAIN} --title=Example --admin_user=${ADMIN_WP} --admin_password=${ADMIN_WP_PASSWORD} --admin_email=info@example.com
