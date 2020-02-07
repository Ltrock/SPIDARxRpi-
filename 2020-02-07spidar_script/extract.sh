#!/bin/bash
#sudo tail -f /var/log/snort/alert | /home/pi/tmp/test.sh | tee /home/pi/spidar_script/log.txt
#sudo tail -f /var/log/snort/alert | /home/pi/tmp/test.sh > /home/pi/spidar_script/log.txt
sudo tail -f /var/log/snort/alert | /home/pi/tmp/test.sh
