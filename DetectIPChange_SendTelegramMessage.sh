#!/bin/bash

TOKEN="HTTPS API token value generated by telegram bot"
CHAT_ID="Chat ID can be obtained from newly created bot"
URL="https://api.telegram.org/bot$TOKEN/sendMessage"

OLD_IP=""
NEW_IP=""

read OLD_IP < /home/user_name/Scripts/IP/old_ip.log
NEW_IP=$(wget -qO- ifconfig.me/ip)

if [ " $NEW_IP " != " $OLD_IP " ];
then
	echo "IP address changed, sending notification"
	curl -s -X POST $URL -d chat_id=$CHAT_ID -d text="IP address has changed to - $NEW_IP"
else
	echo "IP address not changed"
fi

echo $NEW_IP > /home/user_name/Scripts/IP/old_ip.log