FROM php:7.4-fpm

WORKDIR /var/www/html

RUN apk update && apk add \
    build-base \
    vim

RUN docker-php-ext-install pdo_mysql

EXPOSE 9000

CMD ["php-fpm"]