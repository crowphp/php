FROM php:8.0-cli-buster

RUN apt update && apt upgrade -y
RUN apt install zip unzip libzip-dev git -y
# Install PHP extensions
RUN pecl install swoole \
    && pecl install zip \
    && docker-php-ext-enable swoole zip

RUN mv /usr/local/etc/php/php.ini-development /usr/local/etc/php/php.ini
# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer