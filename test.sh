pi@raspberrypi:~ $ cat /home/pi/tmp/test.sh
#!/bin/bash
#read INPUT_DATA
while read -r INPUT_DATA;
do
    FLOW=`echo $INPUT_DATA | awk '{print substr($0, index($0, "{TCP}"))}'`
    SRC_FLOW=`echo $FLOW | awk '{print $2}'`
    SRC_IP=`echo "$SRC_FLOW" | sed -e "s/^\([^:]*\):\(.*\)$/\1/"`
    SRC_PORT=`echo "$SRC_FLOW" | sed -e "s/^\([^:]*\):\(.*\)$/\2/"`
    if echo $INPUT_DATA| grep -q "DoS Attack Detected";
    then
        echo "$SRC_IP" >> /home/pi/spidar_script/fwip.txt
    elif echo $INPUT_DATA| grep -q "SQL Injection Detected";
    then
        echo "$SRC_IP" >> /home/pi/spidar_script/fwip.txt
    else
        echo "$SRC_IP,$SRC_PORT" >> /home/pi/spidar_script/fwipport.txt
    fi
done
