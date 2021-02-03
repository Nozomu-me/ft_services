FROM alpine:3.12
RUN apk update
RUN apk upgrade
RUN apk add vsftpd
RUN apk add openrc
RUN openrc
RUN touch run/openrc/softlevel

COPY vsftpd.conf /etc/vsftpd/

# Configure vsftpd to Use SSL
RUN apk add openssl 
RUN openssl req -x509 -nodes -days 365 -newkey rsa:1024 -keyout /etc/ssl/private/vsftpd.pem -out /etc/ssl/private/vsftpd.pem -subj "/C=MA/ST=Khouribga/L=Khouribga/O=1337/CN=Amouassi"

RUN adduser -D amal
RUN echo -e "amal:amal" | chpasswd

# Install telegraf
RUN apk add telegraf --update --no-cache --repository http://dl-3.alpinelinux.org/alpine/edge/community/ --allow-untrusted
COPY telegraf.conf /etc

# Install supervisord
RUN apk --update add supervisor
COPY supervisord.conf /etc
CMD ["/usr/bin/supervisord", "-n"]

EXPOSE 21 30000