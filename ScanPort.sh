!/usr/bin/env bash
#sokdr

tput clear
trap ctrl_c INT

function ctrl_c() {
    echo "** You pressed Ctrl+C... Exiting Script;"
    exit 0
}

ip="$1"

# List of top 200 common TCP ports
top_ports=("20" "21" "22" "23" "25" "53" "80" "110" "123" "135" "139" "143" "443" "445" "993" "995" "1433" "1521" "3306" "3389" "5432" "5900" "8080" "8443")

# Check if a valid IPv4 address is provided
if [[ $ip =~ ^([0-9]{1,3}\.){3}[0-9]{1,3}$ ]] ; then
    echo "#######################################"
    echo "######## Welcome to ScanPort Script ########"
    echo "Now checking availability of $ip"
    
    START=$(date +%s)

    # Ping the IP address to check if the host is up
    if ping -c1 $ip >/dev/null 2>&1; then
        echo "Host is up.... OK ;)"

        
        echo "Scanning top 200 TCP ports on $ip "
        echo "========================================================"
        
        
        for port in "${top_ports[@]}"; do
            nc -vz -w 2 -n $ip $port
        done

        END=$(date +%s)
        DIFF=$(( END - START ))
        echo "Script completed in $DIFF seconds."
    else
        echo "Host seems to be down.... exiting"
        exit 1
    fi
else
    echo "Invalid IPv4 address. Please enter a valid address."
    exit 1
fi
