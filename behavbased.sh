#!/bin/sh
sudo timeout 10 tcpdump -i eth0 src 192.168.2.237 -w '/home/pi/spidar_script/Lamptonsmartsocket_outbound.pcap' && sudo timeout 10 tcpdump -i eth0 dst 192.168.2.237 -w '/home/pi/spidar_script/Lamptonsmartsocket_inbound.pcap'
capinfos -y -z ~/spidar_script/Lamptonsmartsocket_outbound.pcap |sed 's/,//g' | sed '1d' |sed -r 's/.* ([0-9]+\.?[0-9]*)[ \t]*([kKMGTP])?.*/\1\U\2/'| numfmt --from si > Lamptonsmartsocket_outbound.txt
capinfos -y -z ~/spidar_script/Lamptonsmartsocket_outbound.pcap |sed 's/,//g' | sed '1d' |sed -r 's/.* ([0-9]+\.?[0-9]*)[ \t]*([kKMGTP])?.*/\1\U\2/'| numfmt --from si > Lamptonsmartsocket_inbound.txt &

#sudo timeout 10 tcpdump -i eth0 src 192.168.2.240 -w '/home/pi/spidar_script/TPLinksmartplug_outbound.pcap' && sudo timeout 10 tcpdump -i eth0 dst 192.168.2.240 -w '/home/pi/spidar_script/TPLinksmartplug_inbound.pcap'
#capinfos -y -z ~/spidar_script/TPLinksmartplug_outbound.pcap |sed 's/,//g' | sed '1d' |sed -r 's/.* ([0-9]+\.?[0-9]*)[ \t]*([kKMGTP])?.*/\1\U\2/'| numfmt --from si > TPLinksmartplug_outbound.txt
#capinfos -y -z ~/spidar_script/TPLinksmartplug_inbound.pcap |sed 's/,//g' | sed '1d' |sed -r 's/.* ([0-9]+\.?[0-9]*)[ \t]*([kKMGTP])?.*/\1\U\2/'| numfmt --from si > TPLinksmartplug_inbound.txt &

#sudo timeout 10 tcpdump -i eth0 src 192.168.2.146 -w '/home/pi/spidar_script/LamptonIPCamera_outbound.pcap' && sudo timeout 10 tcpdump -i eth0 dst 192.168.2.146 -w '/home/pi/spidar_script/LamptonIPCamera_inbound.pcap'
#capinfos -y -z ~/spidar_script/LamptonIPCamera_outbound.pcap |sed 's/,//g' | sed '1d' |sed -r 's/.* ([0-9]+\.?[0-9]*)[ \t]*([kKMGTP])?.*/\1\U\2/'| numfmt --from si > LamptonIPCamera_outbound.txt
#capinfos -y -z ~/spidar_script/LamptonIPCamera_inbound.pcap |sed 's/,//g' | sed '1d' |sed -r 's/.* ([0-9]+\.?[0-9]*)[ \t]*([kKMGTP])?.*/\1\U\2/'| numfmt --from si > LamptonIPCamera_inbound.txt &

sleep 2s & 



