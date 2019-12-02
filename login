#!/bin/sh
while :
do
date

status=$(curl -s --connect-timeout 15 https://www.kangarie.com/status.txt)

if [ "$status" = 'KangArie' ]
then
        echo "Connected";
else
        echo "Not Connected";
        curl 'http://10.226.12.5/login' -H 'Origin: http://10.226.12.5' -H 'Upgrade-Insecure-Requests: 1' -H 'DNT: 1' -H 'Content-Type: application/x-www-form-urlencoded' -H 'User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36' -H 'Referer: http://10.226.12.5/login' --data 'username=HASANAHUMUM&password=ace01d6106b3e0f50b1b3f643a8e867b&dst=&popup=true' --compressed
		fi	
sleep 5;
done
