#!/usr/bin/env sh
#exec >> /scripts/consul_watch.log
IFS=" "
while read a
do
  if [ $a != null ]
   then
    value=$(echo $a | jq -r '.Value | @base64d')
    address=$(echo $value | jq -r '.address')
    port=$(echo $value | jq -r '.port')
    echo "A service has been registered"
    echo "Address: ${address} Port: ${port}"
  else
    echo "No service is currently available"
  fi
done

