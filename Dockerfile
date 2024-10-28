# zainstaluj odpowiednią wersję php
FROM php:8.0-apache

# katalog roboczy
WORKDIR /var/www/html

# kopiowanie do kontenera
COPY . .

# Kilka bibliotek (instalacja)
RUN apt-get update && apt-get install -y libpq-dev \
    && docker-php-ext-install pdo pdo_pgsql

EXPOSE 80