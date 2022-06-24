FROM php:8.0-fpm

RUN apt-get update && apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libpng-dev \
        libonig-dev \
        libicu-dev \
        libpq-dev \
        libgmp-dev \
        git \
        zip \
        unzip

RUN pecl install xdebug redis \
    && docker-php-ext-enable redis xdebug \
    && docker-php-ext-install -j$(nproc) sockets gmp gd mbstring tokenizer bcmath intl mysqli pdo pdo_mysql pdo_pgsql pgsql pcntl

RUN curl -O "https://getcomposer.org/download/2.0.13/composer.phar" && chmod a+x composer.phar && mv composer.phar /usr/local/bin/composer

EXPOSE 9000 9001 9003
