#!/bin/sh
$KARAF_HOME/bin/start
sleep 10
client -r 10 -f /karaf.conf

# sed '/^<transportConnector.* /a <transportConnector name="mqtt" uri="mqtt://0.0.0.0:1883"/>' $KARAF_HOME/etc/activemq.xml

client