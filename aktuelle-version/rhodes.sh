#!/usr/bin/env bash

while IFS="|" read -r date typ mmsi rest; do 
  echo "$date|$typ|$mmsi|$rest" >>rhodes_team07.csv
done 
