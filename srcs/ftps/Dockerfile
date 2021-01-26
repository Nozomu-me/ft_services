# FROM alpine
# RUN apk update
# RUN apk upgrade
# RUN apk add vsftpd
# RUN apk add openrc
# RUN mkdir /run/openrc
# RUN touch run/openrc/softlevel
# RUN openrc

# # Configure vsftpd to Use SSL
# RUN apk add openssl 
# RUN openssl req -x509 -nodes -days 365 -newkey rsa:1024 -keyout /etc/ssl/private/vsftpd.pem -out /etc/ssl/private/vsftpd.pem -subj "/C=MA/ST=Khouribga/L=Khouribga/O=1337/CN=Amouassi"

# COPY vsftpd.conf /etc/vsftpd/
# # RUN adduser -D amal
# # RUN echo -e "" | (passwd -d amal)

# EXPOSE 21


FROM alpine:3.12

RUN apk update && apk upgrade
RUN apk add openrc vsftpd supervisor openssl

# RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/vsftpd.key -out /etc/ssl/certs/vsftpd.crt -subj "/C=MA/ST=Khouribga/L=Khouribga/O=1337/CN=Amouassi"
RUN openssl req -x509 -nodes -days 365 -newkey rsa:1024 -keyout /etc/ssl/private/vsftpd.pem -out /etc/ssl/private/vsftpd.pem -subj "/C=MA/ST=Khouribga/L=Khouribga/O=1337/CN=Amouassi"

# RUN apk add telegraf --update --no-cache --repository http://dl-3.alpinelinux.org/alpine/edge/community/ --allow-untrusted
# COPY vsftpd_old.conf /etc/vsftpd/
# RUN mv /etc/vsftpd/vsftpd_old.conf /etc/vsftpd/vsftpd.conf
COPY vsftpd.conf /etc/vsftpd/
RUN adduser -D amal
RUN echo -e "amalpass" | (passwd -d amal)
RUN openrc
RUN touch /run/openrc/softlevel

RUN apk --update add supervisor
COPY supervisord.conf /etc
CMD /usr/bin/supervisord -c /etc/supervisord.conf

EXPOSE 21 30000