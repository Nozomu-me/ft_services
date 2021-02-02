FROM alpine:3.12
RUN apk update
RUN apk upgrade
RUN apk add openrc
RUN openrc
RUN touch run/openrc/softlevel

#install grafana
RUN apk add libc6-compat
RUN apk add wget
RUN wget https://dl.grafana.com/oss/release/grafana-7.3.7.linux-amd64.tar.gz
RUN tar -zxvf grafana-7.3.7.linux-amd64.tar.gz
RUN rm -rf grafana-7.3.7.linux-amd64.tar.gz
RUN mv grafana-7.3.7 grafana

COPY grafana.db /grafana/data/grafana.db

# Install telegraf
RUN apk add telegraf --update --no-cache --repository http://dl-3.alpinelinux.org/alpine/edge/community/ --allow-untrusted
COPY telegraf.conf /etc

# install supervisord
RUN apk --update add supervisor
COPY supervisord.conf /etc
CMD ["/usr/bin/supervisord", "-n"]

EXPOSE 3000