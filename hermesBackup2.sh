#!/bin/sh
# hermesBackup.sh
Mdate="$(date +"%d-%m-%Y | %H:%M:%S")"
mysqldump -uroot -pPassword --all-databases> /home/backup/backup.$Mdate.all-databases.sql
Description - script  -  all-databases backup!
