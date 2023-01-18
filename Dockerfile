# syntax = edrevo/dockerfile-plus

INCLUDE+ Dockerfile.prod

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

RUN pecl install xdebug pcov

ENV custom=dev
