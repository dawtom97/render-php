# zainstaluj odpowiednią wersję php
FROM php:8.0-apache

# katalog roboczy
WORKDIR /var/www/html

# kopiowanie do kontenera
COPY . .

# Kilka bibliotek (instalacja)
RUN docker-php-ext-install pdo php-pqsql pdo-pgsql

# instalacja komposera
COPY --from=composer:latest /usr/bin/composer /user/bin/composer

RUN composer install

EXPOSE 80