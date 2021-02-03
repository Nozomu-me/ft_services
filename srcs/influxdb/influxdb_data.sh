#! /bin/sh

service influxdb start
influx -execute 'CREATE DATABASE telegraf_data'
service influxdb stop

/usr/bin/supervisord -n