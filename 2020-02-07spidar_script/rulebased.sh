#!/bin/bash
./runsnort.sh & sleep 3s & ./extract.sh &  sleep 2s & cat fwip.txt ; cat fwipport.txt & ./sendlog.sh
