FROM php:5.6-fpm-alpine

# Copy php-fpm config.
ADD ./config/fpm-www.conf /usr/local/etc/php-fpm.d/www.conf

# Create web user/group.
RUN addgroup -g 1000 web && adduser -G web -g web -s /bin/sh -D web

# Install OS dependencies.
RUN apk update && apk add bash nano

# Change path owner.
RUN chown -R web:web /var/www/html