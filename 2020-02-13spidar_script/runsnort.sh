#!/bin/bash
sudo snort -g snort -u snort -A fast -d -q -i eth1 -c /etc/snort/snort.conf 
