FROM alpine:3.12
RUN apk update
RUN apk upgrade
RUN apk add mysql mysql-client
RUN apk add openrc
RUN apk --update add supervisor
RUN openrc
RUN touch run/openrc/softlevel

COPY setupdata.sh /tmp
COPY wordpress_db.sql /tmp
COPY create_tables.sql /tmp
COPY supervisord.conf /etc

CMD sh /tmp/setupdata.sh

EXPOSE 3306
