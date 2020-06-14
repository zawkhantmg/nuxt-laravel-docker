###########[PHP]#############
FROM php:7.3-fpm-alpine

## add necessary packages.
RUN apk add --update build-base curl git zip unzip vim zlib-dev libzip libzip-dev mysql-client

RUN apk add libxml2-dev curl-dev $PHPIZE_DEPS

RUN apk add wkhtmltopdf

RUN pecl install xdebug

RUN docker-php-ext-install pdo_mysql mbstring xml curl session tokenizer json zip

RUN docker-php-ext-enable pdo_mysql mbstring xml curl session tokenizer json xdebug zip

## Install composer.
COPY --from=composer /usr/bin/composer /usr/local/bin/composer

## Set composer valiables.
ENV COMPOSER_ALLOW_SUPERUSER 1
ENV COMPOSER_HOME /composer
ENV PATH $PATH:/composer/vendor/bin

WORKDIR /var/www
COPY . .
RUN composer update --no-scripts
## Download laravel installer.
RUN composer global require laravel/installer

EXPOSE 9000
