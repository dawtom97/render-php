# zainstaluj odpowiednią wersję php
FROM php:8.0-apache

# katalog roboczy
WORKDIR /var/www/html

# kopiowanie do kontenera
COPY . .

# Kilka bibliotek (instalacja)
# RUN apt-get update && apt-get install -y libpq-dev \
#     && docker-php-ext-install pdo pdo_pgsql

# instalacja komposera
# COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# RUN composer install
# Install dependencies required for downloading and installing Composer
RUN apt-get update && apt-get install -y curl git unzip

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

EXPOSE 80