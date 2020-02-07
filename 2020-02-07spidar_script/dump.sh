#!/bin/sh
#timestamp="$(date +"%m-%d-%Y_%Z%H-%M-%S")"
#sudo tcpdump -i eth0 host 192.168.2.237 -w '/home/pi/spidar_script/'$timestamp'.pcap'
#sudo tcpdump -i eth0 host 192.168.2.240 -w '/home/pi/spidar_script/'$timestamp'.pcap'
#sudo tcpdump -i eth0 host 192.168.2.146 -w '/home/pi/spidar_script/'$timestamp'.pcap'

#sudo timeout 10 tcpdump -i eth0 src 192.168.2.237 -w '/home/pi/spidar_script/Lamptonsmartsocket_outbound.pcap' & sudo timeout 10 tcpdump -i eth0 dst 192.168.2.237 -w '/home/pi/spidar_script/Lamptonsmartsocket_inbound.pcap'

#sudo timeout 10 tcpdump -i eth0 src 192.168.2.240 -w '/home/pi/spidar_script/TPLinksmartplug_outbound.pcap' & sudo timeout 10 tcpdump -i eth0 dst 192.168.2.240 -w '/home/pi/spidar_script/TPLinksmartplug_inbound.pcap'

sudo timeout 10 tcpdump -i eth0 src 192.168.2.146 -w '/home/pi/spidar_script/LamptonIPCamera_outbound.pcap' & sudo timeout 10 tcpdump -i eth0 dst 192.168.2.146 -w '/home/pi/spidar_script/LamptonIPCamera_inbound.pcap'
