FROM alpine:3.12
RUN apk update
RUN apk upgrade
RUN apk add openrc
RUN openrc
RUN touch run/openrc/softlevel
RUN apk add influxdb

# Install telegraf
RUN apk add telegraf --update --no-cache --repository http://dl-3.alpinelinux.org/alpine/edge/community/ --allow-untrusted

CMD ["/usr/bin/supervisord", "-n"]