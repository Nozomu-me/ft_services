FROM alpine:3.12
RUN apk update
RUN apk upgrade
RUN apk add openrc --no-cache
RUN apk add influxdb
RUN openrc
RUN touch run/openrc/softlevel

COPY influxdb_data.sh /tmp
# COPY influxdb.conf /etc

# Install telegraf
RUN apk add telegraf --update --no-cache --repository http://dl-3.alpinelinux.org/alpine/edge/community/ --allow-untrusted
COPY telegraf.conf /etc

# install supervisord
RUN apk --update add supervisor
COPY supervisord.conf /etc

CMD sh tmp/influxdb_data.sh

EXPOSE 8086