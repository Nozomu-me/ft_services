FROM alpine
RUN apk update
RUN apk upgrade
RUN apk add nginx
RUN apk add openrc
RUN mkdir /run/openrc
RUN touch run/openrc/softlevel
# version 1
# RUN mkdir /run/nginx
# COPY default.conf /etc/nginx/conf.d/
# COPY index.html /var/www/localhost/htdocs

# version 2
RUN adduser -D -g 'www' www
RUN mkdir /www
RUN chown -R www:www /var/lib/nginx
RUN chown -R www:www /www
COPY nginx.conf /etc/nginx/
COPY index.html /www/
RUN mkdir /run/nginx

# install openssl
RUN apk add openssl 
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt -subj "/C=MA/ST=Khouribga/L=Khouribga/O=1337/CN=Amouassi"

EXPOSE 80 443 22
# CMD ["/bin/sh", "-c", "nginx -g 'daemon off;'; nginx -s reload;"]
