#!/usr/bin/env bash

ips="10.0.0.39 10.0.0.40 10.0.0.41 10.0.0.42 10.0.0.43 10.0.0.44 10.0.0.45"

for ip in ${ips}; do
  echo "--------------------------"
  echo "Pinging ip ${ip}."
  ping -c 1 ${ip}
  echo
done
