#!/usr/bin/env bash

tput clear
trap ctrl_c INT

function ctrl_c() {
        echo "**You pressed Ctrl+C...Exiting Script;"
	exit 0;
}

ip="$1"
echo "#######################################"
echo "######### Welcome to ScanPort Script ##########"
echo
 
if [[ $ip =~ ^[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}$ ]] ; then 
	echo "You entered a valid IPv4 address...lets move on:"
	echo
	echo -e "Now checking availability of $ip"
	echo
	START=$(date +%s)
	ping -c1 $ip >/dev/null 2>&1

		if [ "$?" = 0 ] ; then
	        	echo "Host seems to be up....OK ;)"
	        	echo
			read -p "Do you want TCP or UDP port scan:// Just press tcp/udp to continue: " answer
					if [[ $answer = tcp ]] ; then
					echo "Now starting to scan the IP address: $ip for open TCP ports  "
	        			echo "========================================================"
					nc -vz -w 1 -n $ip 1-10000
					echo
					END=$(date +%s)
					DIFF=$(( $END - $START ))
					echo "Script completed in $DIFF seconds :"
					echo	
				elif [[ $answer = udp ]]; then 
					echo "Now starting to scan the IP address: $ip for open UDP ports  "
	        			echo "========================================================"
					nc -vz -u -w 1 $ip 20-443
					echo
					END=$(date +%s)
					DIFF=$(( $END - $START ))
					echo "Script completed in $DIFF seconds :"
				else 
					echo "Exiting...Run the script again and type tcp or udp"
				fi
		echo
	
		else
			echo "Host seems to be down....exiting"
		fi
else
	echo "Exiting.....Enter a valid IPv4 address: "


fi


exit 0;
