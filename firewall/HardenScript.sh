#!/bin/sh

json_array="$1"

for port in $(echo "$json_array" | jq -r '.[]'); do
    sudo ufw deny "$port"/tcp
    sudo ufw deny "$port"/udp
done

sudo ufw reload
sudo ufw enable