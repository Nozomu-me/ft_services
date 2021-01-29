FROM alpine:3.12
RUN apk update
RUN apk upgrade
RUN apk add mysql mysql-client
RUN apk add openrc
RUN openrc
RUN touch run/openrc/softlevel

COPY setupdata.sh /tmp
COPY wordpress_db.sql /tmp
COPY create_tables.sql /tmp
COPY supervisord.conf /etc
COPY telegraf.conf /etc

# Install telegraf
RUN apk add telegraf --update --no-cache --repository http://dl-3.alpinelinux.org/alpine/edge/community/ --allow-untrusted

# install supervisord
RUN apk --update add supervisor
COPY supervisord.conf /etc

CMD sh /tmp/setupdata.sh

EXPOSE 3306
