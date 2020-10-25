man iptables (pokazuje dokumentacje dla dowolnego polecenia)

#iptables -F (wyłańczamy wpisy)

#iptables -L (pokazuje wpisy)

# keca13_linux
Pobieramy skrypt w linuxie na pow�oce systemowej (ang. shell)
wget --no-check-certificate http://keca13.vot.pl/algo/skrypt/sciagnij.txt
wget --no-check-certificate https://raw.githubusercontent.com/keca13/keca13_linux/master/sciagnij.txt

Odpalamy skrypt
sh sciagnij.txt

Restartujemy system
reboot

Lokalizacja skryptu
../etc/init.d/skrypt

sprawdzamy dzia�anie skryptu np. na
http://www.traceroute.org/

wyłaczamy wpisy IPTABLES na: /etc/init.d/skrypt
iptables -F


właczamy wpisy IPTABLES na:#
/etc/init.d/skrypt
echo text dopisywany >> plik.txt
-----------------------

=====================
man awk
#$2 druga kolumna #',' seoarator kolumny
awk -F ',' '{print $2}' plik.txt
-----------------------
man cat
cat plik.txt | grep 'szukany text'
grep '^napoczatkuwiersza' plik.txt
grep 'nakoncu wiersza$' plik.txt
history | grep iptables
----------------------
Usuwamy białe znaki np.^M

#-i bak    tworzy plik o takiej samej nazwie z rozszeżeniem ca.pem.bak
sed -i.bak 's/^M//g' ca.pem
sed -i.bak 's/,//g' contact.txt

^M=press(Ctrl-V Ctrl-M)
vi ca.pem
--------------
vi file
i # tryb edycji
esc # wyjscie z trybu

:x # wyjscie z zapisem
:q! # bez zapisu

Podstawowe komendy:
Wprowadzanie tekstu: a,i,A,i
Usuwanie tekstu: x (DEL), X (BACKSPACE)
Zapisywanie: ZZ, :w nowanazwa, :w
Wyjscie bez zapisywania :q! Dzialanie guzikow a oraz i:
Przesuwanie tekstu: l,k,j,h
Wstawianie linii: o
Kopiuj inie: yy
Wklej: p
Kasowanie linii: dd
Kasowanie do konca linii: D
Przesuwanie tekstu: $, 0, ^F, ^B, w, b,[[,]]
Wyszukiwanie: /
==================================
# Za pomocą polecenia w możemy otrzymać wiele ciekawych informacji, takich jak np. kto jest zalogowany, jakich procesów jaki użytkownik używa,
# zawiera się tu także polecenie uptime. Użycie polecenia jest następujące. 
w
==================================
# kopiowanie z serwera na serwer

#Kopiowanie pliku ze zdalnej lokalizacji na lokalny dysk
$ scp uzytkownik@serwer.pl:/scieżka/plik_serwer plik_lokalny
#Kopiowanie pliku z dysku lokalnego do zdalnej lokalizacji
$ scp plik_lokalny uzytkownik@serwer.pl:/sciezka/plik_serwer


scp debian-10.3.0-amd64-DVD-1.iso root@X.X.X.X:/var/lib/vz/template/iso/

#Kopiowanie pliku ze zdalnej lokalizacji na lokalny dysk
scp root@10.X.0.X:/home/sample.txt /home/sample.txt


=======================
PYTHON3.8
# https://linuxize.com/post/how-to-install-python-3-8-on-debian-10/

sudo apt update | sudo apt-get update | sudo aptitude update
sudo apt install build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libsqlite3-dev libreadline-dev libffi-dev curl libbz2-dev
curl -O https://www.python.org/ftp/python/3.8.2/Python-3.8.2.tar.xz
tar -xf Python-3.8.2.tar.xz
cd Python-3.8.2
./configure --enable-optimizations
nproc
make -j 4
sudo make altinstall #Do not use the standard make install as it will overwrite the default system python3 binary.
python3.8 --version

# we’ll create a new Python 3.8 project called my_app inside the user home directory.
mkdir ~/my_app && cd ~/my_app

# Creating a Virtual Environment

python3.8 -m venv my_app_venv
source my_app_venv/bin/activate # From inside the project root run the following command to create a virtual environment named my_app_venv:
python -v
deactivate

=========================
#cat /etc/network/interfaces
or
#cat /etc/dhcpcd.conf
or 
# cat /etc/wpa_supplicant/wpa_supplicant.conf
=============================
#echo "Hello world" > drzewko.txt
#echo "Hello world" >> drzewko.txt
operator > nadpisuje cały plik tym, co zostanie przekazane. 
Natomiast operator >> dopisuje przekazane informacje na końcu pliku!

=========================
MONTOWNIE DYSKU

df
df -aTh
df -Th

Disk /dev/sda
Device /dev/sda1
#mkdir /mnt/backups
fdisk -l
#sudo mount /dev/sda2 /mnt/
#sudo umount /dev/sda2

========================
"uptime": "uptime | awk '{print $3,$4}'"
 "cat": "cat /home/pi/test.txt",
	"grep": "grep -i A /home/pi/test.txt",
	"grep2": "grep -i A$ /home/pi/test.txt",
	"grep3": "grep -i ^A /home/pi/test.txt",
	"hostname": "hostname",
	"sed -i -e '1,4s/22/999/' /home/pi/test.txt"


=====================================

LOGI SYSTEMOWE

cat /var/log/syslog
tail -f /var/log/syslog

tail -f /var/log/auth.log

PROCESY

top


ZALOGOWANI

w


Podstawowe komendy i polecenia w Linux
I. Polecenia związane z użytkownikami, grupami, loginami i zamykaniem systemu
o shutdown(zamykamy Linuxa)
o adduser (dodajemy nowego użytkownika)
o newgrp (dodajemy nową grupę)
o passwd (zmieniamy hasła)
o logout (wylogowanie się)
o who (sprawdzamy kto jest aktualnie zalogowany)
o users (j/w)
o w (j/w)
o whoami (sprawdzamy kim jesteśmy)
o mesg (zezwolenie na przyjmowania komunikatów)
o write (wysłanie wiadomości do danego użytkownika)
o wall (j/w tylko do wszystkich użytkowników)
o rwall (j/w tylko do wszystkich w sieci)
o ruser (wyświetla użytkowników pracujących w systemie)
o talk (możliwość interaktywnej rozmowy)
o finger(szczegółowe informacje o użytkownikach)
o su (zmieniamy się w innego użytkownika)
o chmod (zmieniamy parametry pliku)
o chown (zmieniamy właściciela pliku)
o chgrp (zmieniamy jaka grupa jest właścicielem pliku)
II. Polecenia związane z plikami i katalogami
o Polecenia związane z katalogami
 ls (pokazuje nam zawartość katalogu)
 dir (okrojona wersja ls, pochodząca z msdos'a)
 pwd (pokazuje nam katalog w którym się znajdujemy)
 cd (zmieniamy katalog)
 rmdir (usuwamy katalog)
 mkdir (nowy katalog)
o Polecenia związane z plikami
 cat (edytowanie tekstu)
 rm (usuwamy plik(i))
o Polecenia związane z kopiowaniem i przenoszeniem, plików i katalogów
 mv (przenosimy plik lub zmieniamy jego nazwę)
 cp (kopiujemy plik)
 mvdir (przenosimy katalog lub zmieniamy jego nazwę)
III. Polecenia związane z procesami
o ps (pokazuje nam jakie procesy są aktualnie wykonywane)
o kill ("zabijamy" procesy)
IV. Polecenia związane z pomocą
o help (wyświetla nam wszystkie polecenia w Linuxie)
o man (pokazuje nam pomoc do programu)
V. Polecenia związane z kompresją i archiwilizacją
o gzip(kompresuje nam archiwum *.gz)
o tar (archiwizuje nam archiwum *.tar)
 
I. Polecenia związane z użytkownikami, grupami, loginami i zamykaniem systemu:
shutdown
|-Przeznaczenie: zamykanie systemu
|-Parametry: shutdown [minuty] [informacja dla zalogowanych użytkowników]
| shutdown - natychmiastowe zamknięcie systemu
| shutdown now - j/w
| shutdown 0 (zero) - j/w
| shutdown 2 - system zamknie się za 2minuty
| shutdown 2 2minuty do wył. systemu - system zamknie się za 2minuty pokazując komunikat
|-Opis: to polecenie służy do zamykania systemu, jest możliwość ustawienia tej komendy, żeby
| zamyknęła Linuxa za np. 2 min. powiadamiając zalogowanych użytkowników
|_________________________________________________________________
adduser
|-Przeznaczenie: dodawanie nowego użytkownika
|-Parametry:adduser [nazwa użytkownika]
| adduser jan - dodaje użytkownika do komputera o nazwie(imieniu) jan
|-Opis: jeśli jesteś zalogowany jako root masz prawo dostępu do tej komendy, jeśli nie jesteś musisz
| się najpierw przelogować na root'a
|-Patrz także: [passwd] [newgrp]
|_________________________________________________________________
newgrp
|-Przeznaczenie: dodawanie nowej grupylub przełączanie na inną
|-Parametry:newgrp [nazwa grupy]
| newgrp programmers - dodaje nową grupę o nazwie programmers
|-Opis: jeśli jesteś zalogowany jako root masz prawo dostępu do tworzenia grupy, jeśli nie masz
| prawo do zmieniania się międz nimi
|-Patrz także: [adduser]
|_________________________________________________________________
passwd
|-Przeznaczenie: zmiana hasła
|-Parametry: passwd [użytkownik]
| adduser - zmienia hasło loginu na którym jesteś zalogowany
| adduser thomson - zmienia hasło użytkownika thomson, jeśli jesteś zalogowany jako root i nie
| musisz znać poprzedniego hasła zwykłego użytkownika
|-Opis: jeśli jesteś zalogowany jako root masz prawo dostępu do tej komendy, jeśli nie jesteś musisz
| się najpierw przelogować na root'a
|-Patrz także: [adduser]
|_________________________________________________________________
logout
|-Przeznaczenie: służy do wylogowania się
|-Parametry: brak
|-Opis: po wpisaniu polecenia widzimy napis do zalogowowania się
|-Patrz także: [adduser]
|_________________________________________________________________
 
who
|-Przeznaczenie: sprawdzamy kto jest aktualnie zalogowany
|-Parametry: who [parametry]
| who - pokazuje np: root tty01 Dec 13 12:42
| who am i - pokazuje nam informacje o naszym loginie
|-Opis: możesz za pomocą tego polecenia sprawdzić kto jest zalogowany lub "kim" jesteś w systemie
|-Patrz także: [users] [w] [whoami]
|_________________________________________________________________
users
|-Przeznaczenie: pokazuje kto jest zalogowany
|-Parametry: brak
|-Opis: ta komenda jedynie pokazauje po przecinku nazwy użytkowników zalogowanych w systemie
|-Patrz także: [who] [w] [whoami]
|_________________________________________________________________
w
|-Przeznaczenie: pokazuje kto jest zalogowany
|-Parametry: brak
|-Opis: po wpisaniu widzisz napisy :
| 8:43pm up 13 min, 3 users, load average: 0.07, 0.20, 0.20
| USER TTY FROM LOGIN@ IDLE JCPU PCPU WHAT
| ^^^a co poszczególne rzeczy oznaczają^^^
| 8:43pm - bieżaca godzina (20:43)
| up 13 min - jak długo pracuje nasz system (13min)
| 3 users - ilu użytkowników pracuje w systemie
| load average - obciążenie systemu przez programy
| USER - identyfikator użytkownika
| TTY - nazwa terminalu
| FROM - informacja dodatkowa
| LOGIN@ - godzina zalogowania
| IDLE - ile czasu upłynęło od ostatniego naciśnięcia klawisza
| JCPU - czas zużyty przez wszystkie programy na danym terminalu
| PCPU - oraz przez wszystkie programy w danym momencie
| WHAT - nazwa aktywnego procesu
|-Patrz także: [who] [whoami] [whoami] [users]
|_________________________________________________________________
whoami
|-Przeznaczenie: sprawdzamy nazwą loginu na którym się zalogowaliśmy
|-Parametry: brak
|-Opis: jeśli jesteś zalogowany jako root to wyśwetla napis w następnej linijce "root"
|-Patrz także: [who] [w] [users]
|_________________________________________________________________
mesg
|-Przeznaczenie: zezwolenie lub nie na przyjmowania komunikatów
|-Parametry: adduser [Yn]
| mesg y - możesz otrzymywać wiadomości
| mesg n - nie możesz otrzymywać wiadomości
|-Opis: jest to możliwość ustawienia czy do ciebie mają przychodzić komunikaty
|-Patrz także: [write] [wall] [rwall] [ruser] 
write
|-Przeznaczenie: wysyłanie komunikatów
|-Parametry: write [użyykownik] [wiadomość]
| write pasternak wiadro - wysłanie wiadomości do użytkownika pasternak, u pasternaka pojawi się tekst:
| Message from silverstar!root on tty1 at 23:33 wiadro
| po polsku i ludzku: "Wiadomość od root wysłana o godz. 23:33" i teraz wiadomosc "wiadro"
|-Opis: polecenie daje możliwość wysłania komunikaty do wybranej osoby
|-Patrz także: [mesg] [wall] [rwall] [ruser]
|_________________________________________________________________
wall
|-Przeznaczenie: wysyłanie komunikatów
|-Parametry: wall [plik tekstowy]
| wall mes.txt - wysłanie do wszystkich użytkowników wiadomści z pliku mes.txt
|-Opis: polecenie daje możliwość wysłania wiadomości do wszystkch osób
|-Patrz także: [mesg] [write] [rwall] [ruser]
|_________________________________________________________________
rwall
|-Przeznaczenie: wysyłanie komunikatów
|-Parametry: wall [plik tekstowy]
| wall mes.txt - wysłanie do wszystkich sieci wiadomści z pliku mes.txt
|-Opis: polecenie daje możliwość wysłania wiadomości do wszystkch sieci
|-Patrz także: [mesg] [write] [wall] [ruser]
|_________________________________________________________________
ruser
|-Przeznaczenie: wysyłanie komunikatów
|-Parametry: wall [plik tekstowy]
| wall mes.txt - wysłanie do wszystkich pracujących w systemie użytkowników wiadomści z pliku mes.txt
|-Opis: polecenie daje możliwość wysłania wiadomości do wszystkch sieci
|-Patrz także: [mesg] [write] [wall] [ruser]
|_________________________________________________________________
talk
|-Przeznaczenie: interaktywna rozmowa
|-Parametry: talk [login][@sieć]
| talk parker - wtedy pokaże się wiadomość
| No connect yet - brak polaczenia
| Waiting for your party to respond - czekanie na odp.
| Your party is not logged on - brak partnera w sieci
| Ringing your party again - ponowne wezwanie
| Connection established - nawiazano polaczenie
| U odbiorcy pojawi napis
| Message from Talk_Daemon@kom.net at 23:33
| talk: connection requested by root
| talk: respond with: talk root
| Czyli jesli adresat po odczytaniu tego napisze
| talk root, to polaczenie zostanie nawiazane
|-Opis: mozemy nawiazac interaktywny kontakt nie tylko z
| osoba z naszego komputera, ale tez innego z sieci
|-Patrz także: [mesg] [write] [wall] [rwall] [ruser] 
finger
|-Przeznaczenie: informacja o użytkownikach
|-Parametry: finger [user]
| finger - pokarze się nam okienko w rodzaju:
| LOGIN NAME TTY IDLE WHEN WHERE
| root root ttyp1 1.01s Jan 20:33 Unknow
| finger root - pokarze się nam okienko w rodzaju:
| Login name: root In real life: root
| Directory: /root Shell: /bin/bash
| On since Jan 27 20:33:11 on ttyp1 at Unknow
| No unread mail
| No Plan.
|_________________________________________________________________
| Jak widac dowiadujemy się, jakie są prawdziwe personalia użytkownika
| (In real life), nazwy jego kartoteki prywatnej (Directory),
| rodzaj shell'a (Shell), kiedy się zalogowal (On since), lub kiedy ostatnio
| byl w sieci (Last login), czy dostal/czytal ostatnią paczkę poczty
|-Opis: Są to szczegółowe informacje o użytkownikach
|-Patrz także: [who]
|_________________________________________________________________
su
|-Przeznaczenie: szybka zmiana loginu
|-Parametry: su [user]
| su root - zmieniamy się w użytkownika root po podaniu jego hasła
|-Opis: jesli jestesmy jako root nie trzeba podawać hasła
|-Patrz także: [logout]
|_________________________________________________________________
chmod
|-Przeznaczenie: zmieniamy parametry pliku
|-Parametry: chmod [u(user)|g(grupa)|o(właściciel)|a(wszyscy)][+|-][r(czytanie)|w(pisanie)|x(uruchamianie)][nazwa pliku]
| chmod ugo-rw file - odbieramy prawa dostępu do czytania i modyfikowania pliku właścicielowi,grupie oraz użytkownikom
| chmod a-rw - j/w
| chmod a+r - wszyscy mają prawo do czytania pliku
| chmod a+rwx - wszyscy mają prawo do czytania,zapisywania i uruchamiania pliku
|-Parametry: chmod [liczba od 000 do 777][nazwa pliku]
| pierwsza liczba to użytkownik, druga liczba to grupa a trzecia pozoztali
| 0 lub --- brak praw dostępu
| 1 lub --x wykonywanie
| 2 lub -w- czytanie
| 3 lub -wx zapis
| 4 lub r-- zapis i wykonywanie
| 5 lub r-x odczyt
| 6 lub rw- odczyt i zapis
| 7 lub rwx odczyt, zapis i wykonywanie
| chmod 777 file - dajemy pełny dostęp właścicielowi,grupie oraz użytkownikom
| chmod 000 file - zabieramy pełny dostęp właścicielowi,grupie oraz użytkownikom
| chmod a+r - wszyscy mają prawo do czytania pliku
| chmod a+rwx - wszyscy mają prawo do czytania,zapisywania i uruchamiania pliku 
|-Opis: są to prawodostępu dające lub nie prawa do zapisu, czytania i wykonywania
| jakie są prawa można zobaczyć wpisując ls -l na początku jest -rwxr--r-- pierwszy znak oznacza
| plik, katalog..., jeśli zwykły plik to jest minus-, 9 następnych to prawa dostępu 3 pierwsze dla
| włąściciela 3 następe dla grupy a 3 ostatnie dla wszystkich
|-Patrz także: [write] [wall] [rwall] [ruser]
|_________________________________________________________________
chown
|-Przeznaczenie: zmieniamy parametry pliku
|-Parametry: chmod [user] [plik]
| chown rex doc6 - rex jest właścicielom pliku doc6
| chown rex doc* - rex jest właścicielom wszystkich plików w katalogu zaczynających się na doc np. doc5, doc98
| chown rex ??? - rex jest właścicielom wszystkich plików mających 3 litery np. doc, abc
|-Opis: jest to możliwość ustawienia właściciela pliku lub plików
|-Patrz także: [chmod] [chgrp] [newgrp]
|_________________________________________________________________
chgrp
|-Przeznaczenie: ustawiamy która grupa jest właścicielem pliku pliku
|-Parametry: chgrp [grupa] [plik]
| chgrp gracze spis - gracze są właścicielami pliku spis
| chgrp gracze * - gracze są właścicielami wszystkich plików
|-Opis: jest to możliwość ustawienia czy d ciebie mają przychodzić komunikaty
|-Patrz także: [write] [wall] [rwall] [ruser]
|_________________________________________________________________
II. Polecenia związane z plikami i katalogami:
|-Polecenia związane z katalogami:
|--ls
|--|-Przeznaczenie: sprawdzanie zawartości katalogu
|--|-Parametry: ls [parametr] [katalog]
|--| ls - zostaną wyświetlone pliki i katalogi jeden po drugim
|--| ls -a - zostaną wyświetlone wszystkie pliki (ukryte) i katalogi
|--| ls -l - zostaną wyświetlone pliki i katalogi w postaci listy
|--|-ls -t - zostaną wyświetlone pliki i katalogi według daty, najpierw wyświetlane są pliki nowsze
|--| ls -r - zostaną wyświetlone pliki i katalogi według daty, najpierw wyświetlane są pliki starsze
|--|-Opis: jest możliwość łączenia parametrów w postaci ls -al jednak źle będą rozpoznawane ls -a -l
|--|-Patrz także: [dir]
|--|_________________________________________________________________
|--dir
|--|-Przeznaczenie: sprawdzanie zawartości katalogu
|--|-Parametry: -brak-
|--|-Opis: to samo po napisaniu ls (bez parametrów)
|--|-Patrz także: [ls]
|--|_________________________________________________________________
|--pwd
|--|-Przeznaczenie: sprawdzanie w którym jesteśmy katalogu
|--|-Parametry: -brak-
|--|-Opis: po wpisaniu komendy pokazuje się odpowiedź
|--|-Patrz także: --- 
|--|_________________________________________________________________
|--cd
|--|-Przeznaczenie: zmiana katalogu
|--|-Parametry: ls [parametr lub katalog]
|--| cd .. - cofamy się o 1 katakog na dół
|--| cd ../.. - cofamy się o 2 katakogi na dół
|--| cd gry - otwieramy katalog gry
|--|-cd gry/tetris - otwieramy katalog tetris w katalogu gry
|--| cd ../programy - otwieramy katalog programy w katlogu niżej
|--| cd /programy - otwieramy katalog programy na samym "dole"
|--| cd - otwieramy własny katalog
|--|-Opis: jest to możliwość zmieniania aktualnego katalogu
|--|-Patrz także: ---
|--|_________________________________________________________________
|--rmdir
|--|-Przeznaczenie: usuwanie katalogu
|--|-Parametry: rmdir [katalog(i)]
|--| rmdir kat1 - usuniencie katalogu kat1
|--| rmdir kat1 kat2 - usuniencie katalogu kat1 i kat2
|--| rmdir kat1/kat10 - usuniencie katalogu kat10 w katalogu kat1
|--|-Opis: jest możliwość usunięcia katalogu, UWAGA katalog musi być pusty
|--|-Patrz także: [mkdir]
|--|_________________________________________________________________
|--mkdir
|--|-Przeznaczenie: sprawdzanie zawartości katalogu
|--|-Parametry: mkdir [katalog]
|--| mkdir kat8 - zostanie utworzony katalog kat8
|--| mkdir kat1 gry - zostanie utworzony katalog kat8 i gry
|--| mkdir gry/nethach - zostanie utworzony katalog gry a wnim utworzony katalog nethack
|--|-Opis: jest możliwość utworzenia katalogu
|--|-Patrz także: ---
|--|_________________________________________________________________
|-Polecenia związane z plikami:
|--cat
|--|-Przeznaczenie: edytowanie tekstu
|--|-Parametry: cat [parametr] [katalog]
|--| cat >nowy.w - wpisany tekst jest zapisany do pliku nowy.w
|--| cat nowy.w > dwa - plik nowy.w kopiujemy do pliku dwa
|--|-cat dwa nowy.w >tr3 - plik nowy.w i dwa (złączony jeden po drugim) kopiujemy do tr3
|--| cat tr3 > one > two > tree - plik tr3 kopiujemy do one, one do two, two do tree
|--|-Opis: UWAGA przy plikach binarnych grozi ta metoda zawieszeniem terminala lub systemu
|--|-Patrz także: ---
|--|_________________________________________________________________
|--rm
|--|-Przeznaczenie: usuwanie pliku
|--|-Parametry: rmdir [plik(i)]
|--| rmdir plk1 - usuniencie pliku kat1
|--| rmdir plk1 plk2 - usuniencie pliku kat1 i kat2 
|--|-Opis: jest możliwość usunięcia pliku
|--|-Patrz także: [rmdir]
|--|_________________________________________________________________
|-Polecenia związane z kopiowaniem i przenoszeniem, plików i katalogów :
|--mv
|--|-Przeznaczenie: przenoszenie plików
|--|-Parametry: mv [plik] [cel]
|--| mv qfile /tmp - przenosimy plik qfile do katalogu /tmp
|--| mv f* kat - przenosimy wszystkie pliki zaczynające się litere f do katalogu kat
|--|-Opis: za pomocą tej komendy możemy także zmienić nazwę
|--|-Patrz także: ---
|--|_________________________________________________________________
|--cp
|--|-Przeznaczenie: kopiujemy plik
|--|-Parametry: cp [plik/katalog] [cel]
|--| cp plk1 plik198 - kopiujemy zawartość plk1 do plik198
|--| cp plk1 c - kopiujemy zawartość pliku plk1 do c
|--|-Opis: jest możliwość kopiowania plików i katalogów
|--|-Patrz także: [mv] [mvdir]
|--|_________________________________________________________________
|--mvdir
|--|-Przeznaczenie: przenoszenie katalogu
|--|-Parametry: mvdir [katalog] [cel]
|--| mvdir homm3 gry - przenosimy katalog homm3 do gry
|--| mvdir kosz /tmp - przenosimy katalog kosz do /tmp
|--|-Opis: to polecenie działa podobnie jak mv
|--|-Patrz także: [mv]
|--|_________________________________________________________________
III. Polecenia związane z procesami:
ps
|-Przeznaczenie: sprawdzanie komunikatów
|-Parametry: ps [parametry]
| ps - zotanie wyświetlone
| PID TTY STAT TIME COMMAND
| 282 1 S 0:02 /bin/login -- root
| 285 4 S 0:00 (mingetty)
| 286 5 S 0:00 (mingetty)
| 287 6 S 0:00 (mingetty)
| 301 1 S 0:01 (bash)
| 399 1 R 0:00 ps
| ps -aux - zotanie wyświetlone
| USER PID %CPU %MEM SIZE RSS TTY STAT START TIME COMMAND
| bin 95 0.0 0.6 896 44 ? S 20:32 0:00 (portmap)
| news 296 0.0 7.9 1580 516 ? S 20:33 0:00 /sbin/innd -p5 -r
| news 300 0.0 0.3 872 24 ? S 20:33 0:00 (overchan)
| jasio 283 0.1 11.0 1012 716 2 S 20:33 0:01 /bin/login -- jasio
| jasio 344 0.1 10.1 1220 656 2 S 20:38 0:01 -bash 
| asia 358 0.2 10.7 1012 700 3 S 20:39 0:01 /bin/login -- asia
| asia 359 0.1 9.7 1216 632 3 S 20:39 0:00 -bash
| root 1 0.3 1.6 880 104 ? S 20:30 0:04 init
| [...]
| root 465 0.0 6.2 928 404 1 R 20:53 0:00 ps -aux
|^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
| USER - uzytkownik procesu
| PID - numer identyfikacyjny procesu
| TTY - procesy zwiazane z naszym terminalem
| STAT - status procesu
| R - proces dzialajacy (ang. running)
| T - proces zatrzymany (ang. stopped)
| P - proces w stanie spoczynku (ang. page wait)
| D - proces w stanie spoczynku (ang. disk wait)
| S - proces w stanie spoczynku (ang. sleeping)
| I - proces w stanie spoczynku (ang. idle)
| Z - proces duch (ang. zombie), zakonczyl sie ale nie rozliczyl
| sie jeszcze z procesami nadrzednymi!
| TIME - jak dlugo dziala proces
| COMMAND - nazwa programu, ktorej odpowiada proces
| %CPU - ilosc zaangazowania procesora w procesie
| %MEM - jaka czesc pamieci operacyjnej
|-Opis: jeśli chcesz zobaczyć kot jakie procesy wykonuje jest to polecenie dla ciebie
|-Patrz także: [kill]
|_________________________________________________________________
kill
|-Przeznaczenie: zabijanie procesów
|-Parametry:kill [parametr] [PID]
| kill 200 - zabija proces z numerem 200 (PID)
| kill -9 200 - jeśli jest oporny i nieche się wyączyć jest to prawie pewny sposób
| kill -9 -1 - zabija wszystkie procesy procesy
| kill -9 0 - !!!samobójstwo!!!
|-Opis: wyłączanie procesów
|-Patrz także: [ps]
|_________________________________________________________________
IV. Polecenia związane z pomocą:
help
|-Przeznaczenie: wyświetla nam wszystkie polecenia w Linuxie
|-Parametry: -brak-
|-Opis: wyświetlenie komunikatów dostępnych w systemie
|-Patrz także: [man]
|_________________________________________________________________
man
|-Przeznaczenie: pokazuje nam pomoc do programu
|-Parametry: man [program]
| man mount - wyświetla pomoc do polecenia mount
|-Opis: pomoc do konkretnych programów 
|-Patrz także: [man]
|_________________________________________________________________
V. Polecenia związane z kompresją i archiwilizacją:
gzip
|-Przeznaczenie: kompresuje nam archiwum *.qz
|-Parametry: gunzip [parametry] [*.gz]
| gzip arx - tworzy nam zkompresowany plikp arx.gz
| gzip -d arx.gz - odkompresuje nam archiwum arx.gz
|-Opis: Można tylko kompresować jeden plik, w przypadku większej ilości trzeba użyć TAR'a
|-Patrz także: [tar]
|_________________________________________________________________
tar
|-Przeznaczenie: achiwizuje nam archiwum *.qz
|-Parametry: tar [parametry] [*.tar]
| tar -cvf plik* - archwzuje nam wszystkie pliki do sk.tar
| tar -xvf - rozarchwzuje nam wszystkie sk.tar
|-Opis: TAR nie kompresuje nam plików, żeby były z kompresowane trzeba użyć GZIP'a
|-Patrz także: [man]
|_________________________________________________________________ 
scp -P port vi-editor.rd root@192.168.X.X:/home/pi
scp -P port root@192.168.x.x:/home/pi/plik_serwera.txt plik_lokalny.txt
scp -P port plik_lokalny.rd root@192.168.X.X:/home/pi
========================

iptables -F
#sudo service nazwa_us³ugi start
#sudo service nazwa_us³ugi stop
#sudo service nazwa_us³ugi restart
A jak byœcie chcieli wy³¹czyæ skrypt to wystarczy skorzystaæ z polecenia:

#sudo update-rc.d nazwa_us³ugi remove

#/etc/rc.local
powy¿ej,jest to plik przetwarzany przy ka¿dym starcie systemu 
– mo¿emy tu dodaæ polecenie lub œcie¿kê do skryptu 
który ma siê wykonaæ podczas startu systemu.
Zasada jest banalna – po prostu przed linijk¹ „exit 0” dodajemy np.:

echo "System zosta³ uruchomiony"
Lub:

/œcie¿ka/do/skryptu
np.:  /etc/init.d/skrypt