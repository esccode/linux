#!/bin/bash

user="user"
password="password"
host="localhost"
db_name="baza"

backup_path="/var/lib/mysql/backup"
date=$(date +"%d-%b-%Y")
#date=$(date +"%d-%b-%Y--%H:%M")


#pliki ktore beda mialy uprawnienia chmod 600
#tylko dla wlasciciela pliku
#polecenie interfejsu POSIX, które odpowiada za ograniczanie praw dostępu do plików
umask 177

#mysqldump --user=$user --password=$password --host=$host $db_name > $backup_path/$db_name-$date
#using file my.cnf in root directory can evoid showing login password

mysqldump --host=$host $db_name > $backup_path/$db_name-$date
find $backup_path/* -mtime +7 -exec rm {} \;
