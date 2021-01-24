#!/bin/bash
#nazwa pliku write_to_db.sh
#opis: odczytuje plik CSV i dokonuje zapisu w bazie danych MySQL

#USER="keca13"
#PASS="jack55"
echo  liczba argumentow $#
echo plik $@
if [ $# -ne 1 ]; then
 echo $0 DATAFILE
 echo
 exit 2
fi

data=$1

while read line;
do
  oldIFS=$IFS
IFS=,
 values=($line)
#  echo $values
 #echo ${ values[0] values[1] values[2] values[3] }
 echo ${values[0]} ${values[1]} ${values[2]} ${values[3]}
#  echo ${values[3]}
echo "==================="
 values[1]="\"`echo ${values[1]} | tr ' ' '#' `\""
 values[3]="\"`echo ${values[3]}`\""

 query=`echo ${values[@]} | tr ' #' ', ' `
 IFS=$oldIFS

 #mysql -u $USER -p$PASS study <<EOF

 mysql study <<EOF
INSERT INTO students VALUES($query);
EOF
done< $data

if [ $? -eq 0 ]; then
    echo Zapisano dane w bazie
    echo ${values[0]} ${values[1]} ${values[2]} ${values[3]}
elif [ $? -ne 0 ]; then
    echo Nie zapisano dane w bazie
    echo ${values[0]} ${values[1]} ${values[2]} ${values[3]}

fi

 
#mysql study
#select * from students; 
#delete from students;
