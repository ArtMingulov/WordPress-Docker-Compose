FROM debian:buster-slim

RUN apt-get update && apt-get install -y php-fpm php-cli

RUN mkdir /var/www /run/php && chown -R 33:33 /var/www

COPY www.conf /etc/php/7.3/fpm/pool.d/www.conf

CMD ["/usr/sbin/php-fpm7.3", "--nodaemonize", "--fpm-config", "/etc/php/7.3/fpm/php-fpm.conf"]