#!/bin/bash
while true
do
    sshpass -p 'spidar555' scp /home/pi/spidar_script/fwip.txt /home/pi/spidar_script/fwipport.txt root@192.168.2.1:/root/recv/
    sleep 5s
done
