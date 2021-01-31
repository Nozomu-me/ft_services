FROM alpine:3.12
RUN apk update
RUN apk upgrade
RUN apk add openrc
RUN openrc
RUN touch run/openrc/softlevel
RUN apk add influxdb

COPY influxdb_data.sh /tmp
# COPY influxdb.conf /etc

# Install telegraf
RUN apk add telegraf --update --no-cache --repository http://dl-3.alpinelinux.org/alpine/edge/community/ --allow-untrusted
COPY telegraf.conf /etc

RUN sh tmp/influxdb_data.sh

# install supervisord
RUN apk --update add supervisor
COPY supervisord.conf /etc
CMD ["/usr/bin/supervisord", "-n"]

EXPOSE 8086