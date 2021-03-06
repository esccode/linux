# wyrazenia regularne/regex
install windows https://git-scm.com/downloads
WINDOWS BASH: PC->properties->Advance system settings->Environment Variables->Path->C:\Program Files\Git\bin "you can use bash"

^	Początek wiersza
/^slowo/ – Wiersz zaczynający się od slowo
$	Koniec wiersza
/^$/ – Wiersz pusty
.	Pojedynczy znak
/./ – Wiersz zawierający co najmniej jeden znak
*	Zero lub więcej wystąpień poprzedniego znaku
/ */ – Wiersz zawierający jedną lub więcej sąsiadujących spacji
[ ]	Wszystkie znaki pomiędzy '[' i ']'
/[abc]/ – Wiersz zawierający a, b lub c


## cut
cut -f1,2 -d"," file > file2
cut -f1-4 -d"," plik > plik2

## awk
awk -F"," '/num/ {print $2 ":" $1}' asd.txt 
awk -F"," '/num/ && /num2/ {print $2 ":" $1}' asd.txt 

awk -F":"  '{ print "username: " $1 " and  " $3}' /etc/passwd > zzz.txt
awk -F"," '{ print  $5 ", " $1; }' P00000001-ALL.csv
awk -f skrypt.awk P00000001-ALL.csv
awk -f skrypt.awk -F"," P00000001-ALL.csv > plik.txt
awk 'BEGIN {FS=":"} {print $1}' /etc/passwd

### Instrukcje sterujace
awk -F: '{if ($3>=1000) print $1}' /etc/passwd
awk -F"," '{if ($3>=1000) print $1}' plik
awk 'BEGIN {for (i=0; i<6; i++) print i}'

## Wyszukiwanie linii
### Dziesiąta linia
$ awk -F: 'NR==10 {print $1}' /etc/passwd
###W trzeciej kolumnie znajdować musi się wartość większa od 100
$ awk -F: '$3>100 {print $1}' /etc/passwd
###W pierwszej kolumnie znajdować musi się napis ”root”
$ awk -F: '$1 ~ /root/ {print $3}' /etc/passwd
###Domyślną powłoką użytkownika ma być bash
$ awk -F: '$NF ~ /\/bash$/ {print $1}' /etc/passwd

awk -F"," '$1 > 2 {print $1}' data/studentdata.csv | more


## find

### wyszukiwania plików o żądanych parametrach
find  . -iname '*part_of_name_file*'

## grep
grep "text" file -R -n
grep "text" . -R -n
grep -i -R -n -H 'haslo' *|more
grep 'Go+gle' plik
grep 'A[lg]a' plik
grep 'A.a' plik
grep '^Ala' plik

## sed / operacje na tekscie
#### usuwanie pustych wierszy
sed -i '/^$/d' data3.txt

sed -i 's/wyraz1/wyraz2/' plik1
sed -i 's/wyraz1/wyraz2/g' plik1
sed 's/wyraz1/wyraz2/g' plik1 > plik2
sed 's/wyraz1/wyraz2/' | sed 's/wyraz3/wyraz4/' | sed 's/wyraz5/wyraz6/'

### sed wycina 10 wiersz
cat -n file
sed -i 10d file