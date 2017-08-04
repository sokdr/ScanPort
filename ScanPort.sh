!/usr/bin/env bash

ip="$1"
port="$2"
echo "#######################################"
echo "######### Welcome to ScanPort ##########"
echo 
echo -e "Now checking avalaibility of $ip"
echo
ping -c1 $ip >/dev/null 2>&1
if [ "$?" = 0 ] ;
then
        echo "Host seems to be up....OK ;)"
        echo 
        echo "Now starting to port scan the IP address: $ip on port ##$port## "
        echo "========================================================"
        if [[ "$port" =~ ^[0-9]+$ ]] && [ "$port" -ge 1 -a "$port" -le 65535 ]; then
                nc -vz $ip $port 
        else
                echo "Wrong port please enter port between 1 and 65535: "
        fi
else
        echo "Exiting script....try again ;("
fi

exit 0;
