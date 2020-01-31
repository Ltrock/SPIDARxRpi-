#!/bin/sh
capinfos -y -z ~/spidar_script/merge240.pcap | sed '1d' |sed -r 's/.* ([0-9]+\.*[0-9]*).*?/\1/'
