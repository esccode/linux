#!/bin/bash

user="keca13"
password="jack55"
host="localhost"
db_name="lab"

backup_path="/var/lib/mysql/backup"
date=$(date +"%d-%b-%Y")


#pliki ktore beda mialy uprawnienia chmod 600
#tylko dla wlasciciela pliku
umask 177

mysqldump --user=$user --password=$password --host=$host $db_name > $backup_path/$db_name-$date
find $backup_path/* -mtime +7 -exec rm {} \;
