#!/bin/bash
./dump.sh
./capstat.sh
./compare.sh
./rmRouterIp.sh
./sendlogBehav.sh
echo "send attacker behavior success"
