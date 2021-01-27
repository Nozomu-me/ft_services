FROM alpine:3.12
RUN apk update
RUN apk upgrade
RUN apk add vsftpd
RUN apk add openrc
RUN mkdir /run/openrc
RUN touch run/openrc/softlevel
RUN openrc

# Configure vsftpd to Use SSL
RUN apk add openssl 
RUN openssl req -x509 -nodes -days 365 -newkey rsa:1024 -keyout /etc/ssl/private/vsftpd.pem -out /etc/ssl/private/vsftpd.pem -subj "/C=MA/ST=Khouribga/L=Khouribga/O=1337/CN=Amouassi"

COPY vsftpd.conf /etc/vsftpd/
RUN adduser -D amal
RUN echo -e "amalpass" | (passwd -d amal)

#Install supervisord
RUN apk --update add supervisor
COPY supervisord.conf /etc
CMD ["/usr/bin/supervisord", "-n"]

EXPOSE 21 30000