FROM php:7.1-apache

RUN	apt-get update && \
	apt-get install -y \
		libfreetype6-dev \
		libjpeg62-turbo-dev \
		libmcrypt-dev \
		libpng-dev && \
	docker-php-ext-install \
        	gd mysqli opcache

EXPOSE 80
