#!/bin/bash
#~/spidar_script/Lamptonsmartsocket_outbound.txt
#~/spidar_script/TPLinksmartplug_outbound.txt
#~/spidar_script/LamptonIPCamera_outbound.txt


#DRate_out=$(cat Lamptonsmartsocket_outbound.txt | head -n 1)
#pkt_size_out=$(cat Lamptonsmartsocket_outbound.txt | tail -n1)

#DRate_in=$(cat Lamptonsmartsocket_inbound.txt | head -n 1)
#pkt_size_in=$(cat Lamptonsmartsocket_inbound.txt | tail -n1)


#DRate_out=$(cat TPLinksmartplug_outbound.txt | head -n 1)
#pkt_size_out=$(cat TPLinksmartplug_outbound.txt | tail -n1)

#DRate_in=$(cat TPLinksmartplug_inbound.txt | head -n 1)
#pkt_size_in=$(cat TPLinksmartplug_inbound.txt | tail -n1)


#DRate_out=$(cat LamptonIPCamera_outbound.txt | head -n 1)
#pkt_size_out=$(cat LamptonIPCamera_outbound.txt | tail -n1)

#DRate_in=$(cat LamptonIPCamera_inbound.txt | head -n 1)
#pkt_size_in=$(cat LamptonIPCamera_inbound.txt | tail -n1)

DRate_out=$(cat b.txt | head -n 1)
pkt_size_out=$(cat b.txt | tail -n1)
DRate_in=$(cat a.txt | head -n 1)
pkt_size_in=(cat a.txt | tail -n1)
#echo "$DRate_out"
#echo "$pkt_size_out"

if [ "$DRate_out" -gt 50 ] && [ "$DRate_out" -lt 100000000 ]; then
    if [[ "$DRate_in" -gt 0 ]]; then
        if [ "$pkt_size_out" -gt 50 ] && [ "$pkt_size_out" -le 100 ]; then
	    if ["$pkt_size_in" -gt 0]; then
		echo "Blocking..."
                tshark -r a.pcap -T fields -e ip.dst > fwBehav.txt 
            fi
        fi
    fi
fi
