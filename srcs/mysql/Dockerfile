FROM alpine
RUN apk update
RUN apk upgrade
RUN apk add mysql mysql-client
RUN apk add openrc
RUN mkdir run/openrc
RUN touch run/openrc/softlevel
COPY setupdata.sh /tmp
COPY wordpress_db.sql /tmp
COPY create_tables.sql /tmp
CMD sh /tmp/setupdata.sh

EXPOSE 3306
