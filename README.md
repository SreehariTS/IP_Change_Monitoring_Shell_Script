# IP_Change_Monitoring_Shell_Script
A shell script to monitor IP address changes.

The purpose of this shell script it to monitor/detect when the public IP is changed due to any reason.

How it works
1) the command (wget -qO- ifconfig.me/ip) gets the public IP of the system.
2) 

How to set up the script:
1) Dowload the script.
2) Give the required permissions (chmod +x DetectIPChange.sh).
3) Before trying it for first time execute the following command once - [ wget -qO- ifconfig.me/ip > old_ip.log ]
4) This will store the current Public IP to old_ip.log file, so when the script is run the first time it wont fail.
