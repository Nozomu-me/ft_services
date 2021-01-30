FROM alpine:3.12
RUN apk update
RUN apk upgrade
RUN apk add openrc
RUN openrc
RUN touch run/openrc/softlevel

# version 1
# COPY default.conf /etc/nginx/conf.d/
# COPY index.html /var/www/localhost/htdocs

# install nginx
RUN apk add nginx
RUN adduser -D -g 'www' www
RUN mkdir /www
RUN chown -R www:www /var/lib/nginx
RUN chown -R www:www /www
RUN mkdir /run/nginx

COPY nginx.conf /etc/nginx/
COPY index.html /www/

# install openssl
RUN apk add openssl
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt -subj "/C=MA/ST=Khouribga/L=Khouribga/O=1337/CN=Amouassi"

# Install telegraf
RUN apk add telegraf --update --no-cache --repository http://dl-3.alpinelinux.org/alpine/edge/community/ --allow-untrusted
COPY telegraf.conf /etc

# install supervisord
RUN apk --update add supervisor
COPY supervisord.conf /etc
CMD ["/usr/bin/supervisord", "-n"]

EXPOSE 80 443 22