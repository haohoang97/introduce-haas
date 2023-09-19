FROM php:8.2.4-fpm

RUN apt-get update && apt-get install -y libmcrypt-dev \

mysql-client libmagickwand-dev --no-install-recommends \

&& pecl install imagick \

&& docker-php-ext-enable imagick \

&& docker-php-ext-install mcrypt pdo_mysql
