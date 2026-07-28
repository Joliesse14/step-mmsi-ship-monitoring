#!/usr/bin/env bash

cd /usr/lib/cgi-bin/step-abgabe/aktuelle-version
prozessid="$$"
last="$(cat last.txt)"
now="$(cat rhodes_team07.csv | wc -l)"
echo "$now" > last.txt
if test "$last" == "$now"; then
  kill $(cat ncat.pid)
  ncat -e ./rhodes.sh rhodes 8082 &
  ncatpid=$!
  echo "$ncatpid" > ncat.pid
  kill "$prozessid"
fi
