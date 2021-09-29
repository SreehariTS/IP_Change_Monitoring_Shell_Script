# IP_Change_Monitoring_Shell_Script
DetectIPChange.sh is script to monitor public IP address changes.

The purpose of this shell script it to monitor/detect when the public IP is changed due to any reason.

How it works

1) The command (wget -qO- ifconfig.me/ip) gets the public IP of the system.
2) THE OLD_IP variable reads the previous IP address from a file named old_ip.log
3) When the script is run it gets the current IP address and stores it in a variable NEW_IP
4) A comparison is done between OLD_IP and NEW_IP
4) If they are not the same a mail can be triggered notifying the user about this change. [ In my case a message is sent to my telegram account (refer DetectIPChange_SendTelegramMessage.sh) ]
5) Then the NEW_IP variable is written to old_ip.log , over writing the exisiting value.

How to set up the script:

1) Dowload the script.
2) Give the required permissions (chmod +x DetectIPChange.sh).
3) Before trying it for first time execute the following command once. (run this command in the direcorty where you want to place the script.)

    "wget -qO- ifconfig.me/ip > old_ip.log" 

4) This will store the current Public IP address to old_ip.log file ( which is used by the script to compare previous and current IP). the script will run even if the above step isn't done. ( it will have no file to check the OLD_IP and simply return IP address changed)
5) To test out the script to see if it is working, run step 3 first and then change the value in old_ip.log from what ever it is to something different (eg 123.123.123.123 to 123.123.123.124).
6) Run the Script DetectIPChange.sh script, you should get an output "Public IP address changed".

----------------------------------------------------------------------------------------------------------------------------------

The DetectIPChange_SendTelegramMessage.sh script requires a telegram bot. Refer below link on how to create the bot and get the HTTPS API token and CHAT ID.

https://www.techthoughts.info/how-to-create-a-telegram-bot-and-send-messages-via-api/