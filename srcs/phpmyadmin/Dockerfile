FROM alpine
RUN apk update
RUN apk upgrade
RUN apk add wget
RUN apk add openrc
RUN mkdir /run/openrc
RUN touch run/openrc/softlevel

#install nginx
RUN apk add nginx
RUN adduser -D -g 'www' www
RUN mkdir /www
RUN chown -R www:www /var/lib/nginx
RUN chown -R www:www /www
COPY nginx.conf /etc/nginx/
COPY index.html /www/
RUN mkdir /run/nginx

#install phpmyadmin
RUN apk add php7 php7-fpm php7-opcache php7-gd php7-mysqli php7-zlib php7-curl
RUN wget https://files.phpmyadmin.net/phpMyAdmin/5.0.4/phpMyAdmin-5.0.4-all-languages.tar.gz
RUN tar -xzvf phpMyAdmin-5.0.4-all-languages.tar.gz
RUN mv phpMyAdmin-5.0.4-all-languages phpmyadmin
RUN mv phpmyadmin /www
RUN rm phpMyAdmin-5.0.4-all-languages.tar.gz
COPY config.sample.inc.php /www/phpmyadmin
RUN mv /www/phpmyadmin/config.sample.inc.php /www/phpmyadmin/config.inc.php
# RUN rc-status
# RUN rc-service nginx start
# RUN rc-service php-fpm7 start
EXPOSE 5000