#!/usr/bin/env bash

rm last.csv

i=0 
while test $i -lt $1; do 
  j=0
  while test $j -lt $i; do 
    curl "https://informatik.hs-bremerhaven.de/docker-step-2024-team07-web/cgi-bin/step-abgabe/aktuelle-version/result.sh?mmsi=$j" >> /dev/null &
  pid=$! 
    (( j++ )) 
  done
  hbv_dockerstats | tail -n 1 | sed "s_   *_;_g" >> last.csv
  wait $pid 
  sleep 2
  (( i++ ))
done
nl -s ';' last.csv | sed "s_^ *__g" > usage_result.csv
