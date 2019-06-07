#!/usr/bin/env bash

ssh-keygen -t rsa -b 4096 -C "john.doe@gmail.com" -N "" -f "/root/.ssh/id_rsa"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa

ips="10.0.0.39 10.0.0.40 10.0.0.41 10.0.0.42 10.0.0.43 10.0.0.44 10.0.0.45"

for ip in ${ips}; do
  echo "Copy public key to ip ${ip}."
  sshpass -praspberry ssh-copy-id -o "StrictHostKeyChecking=no" pi@${ip}
done
