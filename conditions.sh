#!/bin/bash
if [ $1 –eq $2 ]; then
 echo ”liczby $1 i $2 sa rowne”;
else
 echo ”liczby $1 i $2 sa rozne”;
fi
if [ -e $3 ]; then
 echo ”plik o nazwie $3 istnieje”;
 if [ -L $3 ]; then
 echo ”i jest dowiązaniem symbolicznym”;
 elif [ -f $3 ]; then
 echo ”i jest zwykłym plikiem”;
 fi
else
 echo ”plik o nazwie $3 nie istnieje”
fi 
