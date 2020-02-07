#!/bin/bash
#~/spidar_script/Lamptonsmartsocket_outbound.txt
#~/spidar_script/TPLinksmartplug_outbound.txt
#~/spidar_script/LamptonIPCamera_outbound.txt


#DRate_out=$(cat Lamptonsmartsocket_outbound.txt | head -n 1)
#pkt_size_out=$(cat Lamptonsmartsocket_outbound.txt | tail -n1)
#pkt_size_out=${pkt_size_out%%.*}
#DRate_in=$(cat Lamptonsmartsocket_inbound.txt | head -n 1)
#pkt_size_in=$(cat Lamptonsmartsocket_inbound.txt | tail -n1)
#pkt_size_in=${pkt_size_in%%.*}

#DRate_out=$(cat TPLinksmartplug_outbound.txt | head -n 1)
#pkt_size_out=$(cat TPLinksmartplug_outbound.txt | tail -n1)
#pkt_size_out=${pkt_size_out%%.*}
#DRate_in=$(cat TPLinksmartplug_inbound.txt | head -n 1)
#pkt_size_in=$(cat TPLinksmartplug_inbound.txt | tail -n1)
#pkt_size_in=${pkt_size_in%%.*}

DRate_out=$(cat LamptonIPCamera_outbound.txt | head -n 1)
pkt_size_out=$(cat LamptonIPCamera_outbound.txt | tail -n 1)
pkt_size_out=${pkt_size_out%%.*}
DRate_in=$(cat LamptonIPCamera_inbound.txt | head -n 1)
pkt_size_in=$(cat LamptonIPCamera_inbound.txt | tail -n 1)
pkt_size_in=${pkt_size_in%%.*}

#socket
#if [ "$DRate_out" -gt 205 ] && [ "$DRate_out" -le 999999999 ]; then
#    if [ "$DRate_in" -ge 30 ]; then
#        if [ "$pkt_size_out" -gt 50 ] && [ "$pkt_size_out" -lt 65535 ]; then
#	    if [ "$pkt_size_in" -ge 42 ] && [ "$pkt_size_in" -le 65535 ]; then
#		echo "Blocking..."
#                tshark -r Lamptonsmartsocket_inbound.pcap -T fields -e ip.src > fwBehav.txt
#            fi
#        fi
#    fi
#fi

#TPlink
#if [ "$DRate_out" -gt 600 ] && [ "$DRate_out" -le 999999999 ]; then
#    if [ "$DRate_in" -ge 4 ]; then
#        if [ "$pkt_size_out" -ge 50 ] && [ "$pkt_size_out" -le 65535 ]; then
#            if [ "$pkt_size_in" -ge 50 ] && [ "$pkt_size_in" -le 65535 ]; then
#                echo "Blocking..."
#                tshark -r TPLinksmartplug__inbound.pcap -T fields -e ip.src > fwBehav.txt
#            fi
#        fi
#    fi
#fi

#IPcam
if [ "$DRate_out" -gt 500 ] && [ "$DRate_out" -le 999999999 ]; then
    if [ "$DRate_in" -ge 11 ]; then
        if [ "$pkt_size_out" -ge 50 ] && [ "$pkt_size_out" -le 65535 ]; then
            if [ "$pkt_size_in" -ge 50 ] && [ "$pkt_size_in" -le 65535 ]; then
                echo "Blocking..."
                tshark -r LamptonIPCamera_inbound.pcap -T fields -e ip.src > fwBehav.txt
            fi
        fi
    fi
fi
