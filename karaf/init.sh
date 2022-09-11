#!/bin/sh
$KARAF_HOME/bin/start
sleep 10
client -r 10 -f /karaf.conf
client