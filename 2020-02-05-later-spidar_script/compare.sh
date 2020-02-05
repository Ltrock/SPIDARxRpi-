#!/bin/bash
#~/spidar_script/Lamptonsmartsocket_outbound.txt
#~/spidar_script/TPLinksmartplug_outbound.txt
#~/spidar_script/LamptonIPCamera_outbound.txt


DRate_out=$(cat Lamptonsmartsocket_outbound.txt | head -n 1)
pkt_size_out=$(cat Lamptonsmartsocket_outbound.txt | tail -n1)

DRate_in=$(cat Lamptonsmartsocket_inbound.txt | head -n 1)
pkt_size_in=$(cat Lamptonsmartsocket_inbound.txt | tail -n1)


#DRate_out=$(cat TPLinksmartplug_outbound.txt | head -n 1)
#pkt_size_out=$(cat TPLinksmartplug_outbound.txt | tail -n1)

#DRate_in=$(cat TPLinksmartplug_inbound.txt | head -n 1)
#pkt_size_in=$(cat TPLinksmartplug_inbound.txt | tail -n1)


#DRate_out=$(cat LamptonIPCamera_outbound.txt | head -n 1)
#pkt_size_out=$(cat LamptonIPCamera_outbound.txt | tail -n1)

#DRate_in=$(cat LamptonIPCamera_inbound.txt | head -n 1)
#pkt_size_in=$(cat LamptonIPCamera_inbound.txt | tail -n1)


#echo "$DRate_out"
#echo "$pkt_size_out"
DRate_out="${DRate_out//[$'\t\t\n ']}"
DRate_in="${DRate_out//[$'\t\t\n ']}"
pkt_size_out="${DRate_out//[$'\t\t\n ']}"
pkt_size_in="${DRate_out//[$'\t\t\n ']}"


if [ "$DRate_out" -ge 0 ] && [ "$DRate_out" -lt 1000 ]; then
    if [[ "$DRate_in" -ge 0 ]]; then
        if [ "$pkt_size_out" -gt 1 ] && [ "$pkt_size_out" -le 1000 ]; then
	    if [ "$pkt_size_in" -ge 0 ]; then
		echo "Blocking..."
                tshark -r Lamptonsmartsocket_outbound.pcap -T fields -e ip.dst > fwBehav.txt
            fi
        fi
    fi
fi
