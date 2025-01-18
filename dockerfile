# Use an official PHP image with Apache
FROM php:8.0-apache

# Copy your PHP application to the container
COPY . /var/www/html

# Ensure Apache runs correctly with PHP
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli

# Expose port 80
EXPOSE 80
