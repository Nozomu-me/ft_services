#! /bin/sh

service start influxdb
influx -execute 'CREATE DATABASE "telegraf_data"'