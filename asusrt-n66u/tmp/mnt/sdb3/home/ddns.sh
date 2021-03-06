#!/bin/sh
OLDIP=$(cat /tmp/mnt/sdb3/home/ip.txt) 
IP=$(curl -s icanhazip.com)
PBTOKEN=$(cat pbtoken.txt)

if [ "$IP" != "" ]
then
echo "$IP" > /tmp/mnt/sdb3/home/ip.txt
if [ "$OLDIP" != "$IP" ] 
then
curl --header "Authorization: Bearer $PBTOKEN" -X POST https://api.pushbullet.com/v2/pushes --header 'Content-Type: application/json' --data-binary '{"type": "note", "title": "New IP", "body": "'$IP'"}'
fi
fi 
