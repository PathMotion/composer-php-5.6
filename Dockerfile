FROM prooph/composer:5.6

RUN yes | pecl config-set php_ini /usr/local/etc/php/php.ini \
    && pecl channel-update pecl.php.net \
    && pecl install xdebug-2.5.5 \
    && echo "zend_extension=$(find /usr/local/lib/php/extensions/ -name xdebug.so)" > /usr/local/etc/php/conf.d/xdebug.ini
