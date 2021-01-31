#! /bin/sh

service influxdb start
influx -execute 'CREATE DATABASE "telegraf_data"'
service influxdb stop
service influxdb start