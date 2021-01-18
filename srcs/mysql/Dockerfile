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
CMD sh /tmp/setupdata.sh

# install supervisord
RUN apk --update add supervisor
COPY supervisord.conf /etc
CMD ["/usr/bin/supervisord", "-n"]

EXPOSE 3306
