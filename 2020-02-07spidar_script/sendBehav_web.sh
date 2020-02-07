#!/bin/sh
now=$(date +"%m/%d/%Y-%H:%M:%S")
echo "$now" > timeBehav.txt
awk NF fwBehavIP.txt | awk '!seen[$0]++' > fwBehavIP2.txt

#cat ~/spidar_script/Lamptonsmartsocket_outbound.txt ~/spidar_script/Lamptonsmartsocket_inbound.txt ~/spidar_script/timeBehav.txt ~/spidar_script/fwBehavIP2.txt ~/spidar_script/ip_Lamptonsocket.txt > ~/spidar_script/behavior_Lamptonsmartsocket.txt
#cat TPLinksmartplug_outbound.txt TPLinksmartplug_inbound.txt timeBehav.txt fwBehavIP2.txt ip_TPLinksmartplug.txt > behavior_TPLinkplug.txt
#cat LamptonIPCamera_outbound.txt LamptonIPCamera_inbound.txt timeBehav.txt fwBehavIP2.txt ip_LamptonCam.txt > behavior_LamptonCam.txt

#sudo sshpass -p 'spidar555' scp /home/pi/spidar_script/behavior_Lamptonsmartsocket.txt Administrator@192.168.2.243:'C:/Download/'
#sudo sshpass -p 'spidar555' scp /home/pi/spidar_script/behavior_TPLinkplug.txt Administrator@192.168.2.243:'C:/Download/'
#sudo sshpass -p 'spidar555' scp /home/pi/spidar_script/behavior_LamptonCam.txt Administrator@192.168.2.243:'C:/Download/'

sudo sshpass -p 'spidar555' scp behavior_LamptonCam.txt behavior_TPLinkplug.txt behavior_LamptonCam.txt Administrator@192.168.2.243:'C:/Download/'

