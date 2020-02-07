#!/bin/sh
tshark -T fields -e frame.len -r ~/lampton_plugdst237.pcap | awk 'BEGIN{min=1500; max =0}{if ($1<0+min) min=$1; else if($1>0+max) max=$1} END{print min;print max}'
