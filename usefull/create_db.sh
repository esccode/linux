#!/bin/bash
#nazwa pliku create_db.sh
#opis: tworzy baze danych MySQL i tabele

USER="user"
#PASS="pass"

#mysql -u $USER -p$PASS <<EOF
mysql -u $USER <<EOF 2> /dev/null
CREATE DATABASE study;
EOF

[ $? -eq 0 ] && echo Utworzono baze danych || echo Baza danych juz istnieje

mysql -u $USER study <<EOF 2> /dev/null
CREATE TABLE students(
id int,
name varchar(100),
mark int,
dept varchar(4)
);
EOF

[ $? -eq 0 ] && echo Utworzono tabelę students || echo Tabela students juz istnieje
mysql -u $USER study <<EOF
DELETE FROM students;
EOF