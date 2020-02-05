#!/bin/bash
sudo snort -g snort -u snort -A fast -d -q -i eth0 -c /etc/snort/snort.conf 
