#!/bin/sh

capinfos -y -z ~/spidar_script/Lamptonsmartsocket_outbound.pcap |sed 's/,//g' | sed '1d' |sed -r 's/.* ([0-9]+\.?[0-9]*)[ \t]*([kKMGTP])?.*/\1\U\2/'| numfmt --from si > Lamptonsmartsocket_outbound.txt
capinfos -y -z ~/spidar_script/Lamptonsmartsocket_outbound.pcap |sed 's/,//g' | sed '1d' |sed -r 's/.* ([0-9]+\.?[0-9]*)[ \t]*([kKMGTP])?.*/\1\U\2/'| numfmt --from si > Lamptonsmartsocket_inbound.txt


#capinfos -y -z ~/spidar_script/TPLinksmartplug_outbound.pcap |sed 's/,//g' | sed '1d' |sed -r 's/.* ([0-9]+\.?[0-9]*)[ \t]*([kKMGTP])?.*/\1\U\2/'| numfmt --from si > TPLinksmartplug_outbound.txt
#capinfos -y -z ~/spidar_script/TPLinksmartplug_inbound.pcap |sed 's/,//g' | sed '1d' |sed -r 's/.* ([0-9]+\.?[0-9]*)[ \t]*([kKMGTP])?.*/\1\U\2/'| numfmt --from si > TPLinksmartplug_inbound.txt


#capinfos -y -z ~/spidar_script/LamptonIPCamera_outbound.pcap |sed 's/,//g' | sed '1d' |sed -r 's/.* ([0-9]+\.?[0-9]*)[ \t]*([kKMGTP])?.*/\1\U\2/'| numfmt --from si > LamptonIPCamera_outbound.txt
#capinfos -y -z ~/spidar_script/LamptonIPCamera_inbound.pcap |sed 's/,//g' | sed '1d' |sed -r 's/.* ([0-9]+\.?[0-9]*)[ \t]*([kKMGTP])?.*/\1\U\2/'| numfmt --from si > LamptonIPCamera_inbound.txt 

