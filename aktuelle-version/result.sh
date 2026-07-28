#!/usr/bin/env bash
echo "Content-type:text/html"
echo
cat html_head.txt 
schiff=$(echo $QUERY_STRING |cut -d'=' -f2)  
#echo "$schiff"
echo '<table>'
echo '<tr><th class="result1">Datum und Uhrzeit der Nachricht</th><th class="result2">Gesendete Nachricht</th></tr>'
while IFS="|" read -r date typ mmsi  rest 
do
  if test "$mmsi" == "$schiff" 
  then
    echo -e "<tr><td class='result1'>$date $typ <b>$mmsi</b>:</td><td class='result2'>$rest</td></tr>" 
  fi
done < rhodes_team07.csv
echo '</table>'
cat html_end.txt
