#!/bin/sh
$KARAF_HOME/bin/start
sleep 5
client -r 10 -f /karaf.conf

sed -i '/<transportConnector name.*/a\\ <transportConnector name="mqtt" uri="mqtt:\/\/0.0.0.0:1883"\/>' $KARAF_HOME/etc/activemq.xml


client "system:shutdown -r -f"

sleep 10
client -r 10 "bundle:install -s mvn:com.github.larsid/soft-iot-mapping-devices/master"
client -r 10 "bundle:install -s mvn:br.ufba.dcc.wiser.soft_iot/soft-iot-local-storage/1.0.0"
client -r 10 "bundle:install -s mvn:br.ufba.dcc.wiser.soft_iot/soft-iot-iot-service/1.0.0"


client