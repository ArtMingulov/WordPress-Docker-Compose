FROM debian:buster-slim

RUN apt-get update && apt-get install -y php-fpm php-cli less mariadb-client && \
    mkdir /var/www /run/php && chown -R 33:33 /var/www

COPY www.conf /etc/php/7.3/fpm/pool.d/www.conf
COPY docker-entrypoint.sh /docker-entrypoint.sh
COPY docker-entrypoint.d/* /docker-entrypoint.d/

ADD https://github.com/tianon/gosu/releases/download/1.12/gosu-amd64 /usr/local/bin/gosu
ADD https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar /usr/local/bin/wp-cli
RUN chmod +x /usr/local/bin/gosu /usr/local/bin/wp-cli

ENTRYPOINT [ "/docker-entrypoint.sh" ]
CMD ["/usr/sbin/php-fpm7.3", "--nodaemonize", "--fpm-config", "/etc/php/7.3/fpm/php-fpm.conf"]
