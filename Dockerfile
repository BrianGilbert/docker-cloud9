FROM hoadx/cloud9:latest
MAINTAINER Brian Gilbert <brian@realityloop.com>

Run apk add --update --no-cache php7 php7-xdebug php7-json php7-dom php7-curl php7-openssl php7-phar php7-mbstring php7-zlib \
  && rm -rf /var/cache/apk/* \
  && ln -s /usr/bin/php7 /usr/bin/php

# Install composer.
Run curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer \
  chmod +x /usr/local/bin/composer
