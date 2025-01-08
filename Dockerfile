FROM php:8.2-apache

# Update and upgrade packages, install system dependencies, and enable Apache modules
RUN apt-get update && \
    apt-get install -y \
    libicu-dev \
    git \
    unzip && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    docker-php-ext-install intl pdo_mysql mysqli

RUN a2enmod rewrite


