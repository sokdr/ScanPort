# ScanPort

This is a simple TCP Port Scanning script written in Bash, designed to check the availability of open ports on a target IPv4 address. It uses nc (Netcat) for scanning the top 200 TCP ports.

To use the script, run the following command:

`./scan_ports.sh <IP_ADDRESS>`



```#######################################
######## Welcome to ScanPort Script ########
Now checking availability of 192.168.100.7
Host is up.... OK ;)
Scanning top 200 TCP ports on 192.168.100.7...
========================================================
(UNKNOWN) [192.168.100.7] 20 (ftp-data) : Connection refused
(UNKNOWN) [192.168.100.7] 21 (ftp) : Connection refused
(UNKNOWN) [192.168.100.7] 22 (ssh) open
(UNKNOWN) [192.168.100.7] 23 (telnet) : Connection refused
(UNKNOWN) [192.168.100.7] 25 (smtp) : Connection refused
(UNKNOWN) [192.168.100.7] 53 (domain) : Connection refused
(UNKNOWN) [192.168.100.7] 80 (http) open
(UNKNOWN) [192.168.100.7] 110 (pop3) : Connection refused
(UNKNOWN) [192.168.100.7] 123 (?) : Connection refused
(UNKNOWN) [192.168.100.7] 135 (epmap) : Connection refused
(UNKNOWN) [192.168.100.7] 139 (netbios-ssn) : Connection refused
(UNKNOWN) [192.168.100.7] 143 (imap2) : Connection refused
(UNKNOWN) [192.168.100.7] 443 (https) : Connection refused
(UNKNOWN) [192.168.100.7] 445 (microsoft-ds) : Connection refused
(UNKNOWN) [192.168.100.7] 993 (imaps) : Connection refused
(UNKNOWN) [192.168.100.7] 995 (pop3s) : Connection refused
(UNKNOWN) [192.168.100.7] 1433 (ms-sql-s) : Connection refused
(UNKNOWN) [192.168.100.7] 1521 (?) : Connection refused
(UNKNOWN) [192.168.100.7] 3306 (mysql) : Connection refused
(UNKNOWN) [192.168.100.7] 3389 (ms-wbt-server) : Connection refused
(UNKNOWN) [192.168.100.7] 5432 (postgresql) : Connection refused
(UNKNOWN) [192.168.100.7] 5900 (?) : Connection refused
(UNKNOWN) [192.168.100.7] 8080 (http-alt) : Connection refused
(UNKNOWN) [192.168.100.7] 8443 (?) : Connection refused
Script completed in 1 seconds.
```
