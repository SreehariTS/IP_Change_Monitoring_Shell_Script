#!/bin/bash

OLD_IP=""
NEW_IP=""

read OLD_IP < old_ip.log
NEW_IP=$(wget -qO- ifconfig.me/ip)

if [ " $NEW_IP " != " $OLD_IP " ];
then
        echo "Changed"
fi

echo $NEW_IP > old_ip.log
