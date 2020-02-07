#!/bin/bash
pkt_size_out=$(cat LamptonIPCamera_outbound.txt | tail -n 1)
pkt_size_out=${pkt_size_out%%.*}
echo $pkt_size_out

