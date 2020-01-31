#!/bin/sh
timestamp="$(date +"%m-%d-%Y_%Z%H-%M-%S")"
sudo tcpdump -i eth0 host 192.168.2.237 -w '/home/pi/spidar_script/'$timestamp'.pcap'
#sudo tcpdump -i eth0 host 192.168.2.240 -w '/home/pi/spidar_script/'$timestamp'.pcap'
#sudo tcpdump -i eth0 host 192.168.2.146 -w '/home/pi/spidar_script/'$timestamp'.pcap'

