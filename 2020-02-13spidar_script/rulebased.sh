#!/bin/bash
./runsnort.sh & sleep 5s & ./extract.sh &  sleep 3s & ./sendlog.sh
