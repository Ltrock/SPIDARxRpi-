#!/bin/sh
sudo nmap -sn 192.168.2.0/24 | grep -v "Starting" | grep -v "Host" | grep -v "Nmap done" > /home/pi/spidar_script/device.txt
