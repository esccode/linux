#!/bin/bash
if [ $1 –gt $2 ]; then
 X=$1;
while [ $X –gt $2 ]; do
 ROZNICA=$(($X - $2));
 echo ”liczba $X jest wieksza od liczby $2 o $ROZNICA”;
 X=$(($X – 1));
done
else
 echo ”liczba $1 nie jest wieksza od liczby $2”;
fi 

