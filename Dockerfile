FROM php:8.0-cli-buster

# Install PHP extensions
RUN pecl install swoole \
    && pecl install xdebug \
    && docker-php-ext-enable swoole xdebug

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer