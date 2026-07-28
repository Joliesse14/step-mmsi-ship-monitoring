#!/usr/bin/env bash
echo 'content-type:text/html'
echo
cat html_head.txt 
echo '<table>'
echo -e "<tr><th class='mmsi'>Nachrichtenanzahl\t</td><th class='mmsi'>mmsi</td></tr>"
cat rhodes_team07.csv| 
  cut -d'|' -f3 | 
  sort|  
  uniq -c| 
  while IFS=" " read -r nummer  mmsi 
  do
    echo "<tr><td class='mmsi'>$nummer</td><td class='mmsi'><a
    href='result.sh?mmsi=$mmsi'>$mmsi</
    a></td></tr>" 
  done
  echo '</table>'
  cat html_end.txt 
