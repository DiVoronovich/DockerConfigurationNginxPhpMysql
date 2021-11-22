FROM php:7.4-fpm

WORKDIR /var/www/html

#install latest version of composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer.phar

RUN docker-php-ext-install pdo pdo_mysql
RUN docker-php-ext-install mysqli

#RUN pecl install -o -f xdebug \
#    && docker-php-ext-enable xdebug

RUN pecl install -o -f xdebug && docker-php-ext-enable xdebug


ADD etc/xdebug3.ini $PHP_INI_DIR/conf.d/zz-xdebug.ini