#!/usr/bin/env bash 

Zeit=$(date +"%Y-%m-%d_%H-%M")
cd /home/step-2024-team07/step-abgabe/ 
tar -cvf backup_$Zeit.tar ./aktuelle-version/ 
mv backup_$Zeit.tar ./older-versions/ 

#Wiederherstellung

cd ./older-versions/
mv backup_$Zeit.tar $Zeit.tar
backup=$Zeit.tar 
ls -d -p *.tar | grep -v / # -d zeigt Verzeichnisse ohne ihre Inhalte, -p Slash Indikator an Verzeichnisse anhängen und rausfiltern per -v 
echo "gib den name des gewünschten backups ein oder nichts, falls keins gewünscht ist: "
read backup
if test -f "$backup"; then
  echo "stelle wieder her: $backup"
  mkdir backup_$backup
  tar -xvf "$backup" 
  mv aktuelle-version/* ./backup_$backup
  rm -r aktuelle-version 
  echo "Wiederherstellung fertig"
else
  echo "Skript ist beendet, falls du ein Problem hast wende dich an unseren Kundensupport (Das sind wir btw)"
fi
