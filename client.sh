#!/bin/bash

keyPath="apps/one"

while true;
do
  echo "Looking for key at ${keyPath}"
  consul watch -type key -key $keyPath ./scripts/client_handler.sh
  #sleep 3
done

