#!/bin/bash
# alldataBackup.sh
Mdate="$(date +"%d-%m-%Y | %H:%M:%S")"
mysqldump -uroot -pabcabcabc --all-databases> '/home/pi/backups/backup.'"$Mdate"'.all-databases.sql'
echo  script - all-databases backup! $Mdate

