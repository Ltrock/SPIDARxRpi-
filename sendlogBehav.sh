#!/bin/bash
while true
do
    sshpass -p 'spidar555' scp fwBehavIP.txt root@192.168.2.1:/root/recv/
    sleep 5s
done

