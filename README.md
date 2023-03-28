# ScanPort

Port scanner in bash scripting 

Open your Linux terminal enter the following command with permissions (chmod +x ScanPort.sh)

Script checks for TCP ports 1-10000 and UDP ports 20-443 

<li>./ScanPort targetIP </li>

<H2><b>Example</b></H2>

```
  ./ScanPort.sh 192.168.80.131
  #######################################
  ######### Welcome to ScanPort ##########

  You entered a valid IPv4 address lets move on:

  Now checking availability of 192.168.80.131

  Host seems to be up.... ;)

  Do you want TCP or UDP port scan:// Just press tcp/udp to continue: tcp
  Now starting to scan the IP address: 192.168.80.131 for open TCP ports  
  ========================================================
  (UNKNOWN) [192.168.80.131] 8787 (?) open
  (UNKNOWN) [192.168.80.131] 8180 (?) open
  (UNKNOWN) [192.168.80.131] 8009 (?) open
  (UNKNOWN) [192.168.80.131] 6697 (?) open
  (UNKNOWN) [192.168.80.131] 6667 (ircd) open
  (UNKNOWN) [192.168.80.131] 6000 (x11) open
  (UNKNOWN) [192.168.80.131] 5900 (?) open
  (UNKNOWN) [192.168.80.131] 5432 (postgresql) open
  (UNKNOWN) [192.168.80.131] 3632 (distcc) open
  (UNKNOWN) [192.168.80.131] 3306 (mysql) open
  (UNKNOWN) [192.168.80.131] 2121 (iprop) open
  (UNKNOWN) [192.168.80.131] 2049 (nfs) open
  (UNKNOWN) [192.168.80.131] 1524 (ingreslock) open
  (UNKNOWN) [192.168.80.131] 1099 (rmiregistry) open
  (UNKNOWN) [192.168.80.131] 514 (shell) open
  (UNKNOWN) [192.168.80.131] 513 (login) open
  (UNKNOWN) [192.168.80.131] 512 (exec) open
  (UNKNOWN) [192.168.80.131] 445 (microsoft-ds) open
  (UNKNOWN) [192.168.80.131] 139 (netbios-ssn) open
  (UNKNOWN) [192.168.80.131] 111 (sunrpc) open
  (UNKNOWN) [192.168.80.131] 80 (http) open
  (UNKNOWN) [192.168.80.131] 53 (domain) open
  (UNKNOWN) [192.168.80.131] 25 (smtp) open
  (UNKNOWN) [192.168.80.131] 23 (telnet) open
  (UNKNOWN) [192.168.80.131] 22 (ssh) open
  (UNKNOWN) [192.168.80.131] 21 (ftp) open

  Script completed in 11 seconds :
```
