# openssl
openssl version
## update
cd /usr/src
wget https://*openssl*.tar.gz
gunzip < *openssl*.tar.gz | tar zvf -
cd *openssl*
./config --prefix=/usr/local/ssl  
make -j 2 
make test
make install


# find i grep
## find
sudo find /etc -name vimrc

sudo find /etc -name vimrc -type f

sudo find /etc -name vimrc -type d

find ~ -name ".bash*"

find ~ -name ".bash*" | xargs ls -la

find ~ -executable

### szuka pliki które były modyfikowane conajmniej 7 dni temu albo powyzej albo dzis
sudo find /etc/ -type f -mtime -7
sudo find /etc/ -type f -mtime +7
sudo find /etc/ -type f -mtime 0
### wyszukuje dane słowo w poleceniu: man find
/type

## grep
ps -ef | grep sshd

## ls pokazuje tylko katalogi z opja kolorowania 
ls -p --color | grep /


### pszeszukujemy pliki binarne grep -a
sudo grep -a szukaneslowo /var/log/auth.log
sudo cat /var/log/auth.log | grep -a szukaneslowo

### archiwizujemy plik
cp /var/log/auth.log .
gzip auth.log
ls -lah auth.log.gz

#### przeszukiwanie archiwum
zgrep -a ubuntu auth.log.gz





# fail2ban
## fail2ban wykorzystuje reguły iptables
sudo add-apt-repository universe
sudo apt install fail2ban
systemctl status fail2ban
cat /var/log/auth.log
cd /etc/fail2ban/
ps -ef | grep fail2ban
cp fail2ban.conf fail2ban.local
cp jail.conf jail.local
systemctl restart fail2ban

sudo iptables -L -n -v


# unattended upgrades
sudo apt install unattended upgrades
sudo dpkg-reconfigure unattended-upgrades
cat /etc/apt/apt.conf.d/20auto-upgrades
vim /etc/apt/apt.conf.d/50unattended-upgrades
cat /var/log/unattended-upgrades/unattended-upgrades.log
sudo unattended-upgrade -v


# ufw Uncomplicated Firewall(domyslnie wyłączona w ubuntu)

man ufw
sudo ufw status/enable/disable
sudo ufw status verbose

cat /etc/ufw/ufw.conf
ufw default deny incoming
ufw default allow outgoing
ufw default allow 5876
ufw default deny 5876
ufw default delete deny 5876

cat /etc/services | grep ssh
ufw allow ssh
ufw delete allow ssh

ufw allow 80:88/tcp


# apache2
sudo apt install apache2
ps -ef | grep telnet
sudo netstat -nlp | grep 80



# rozpakowanie z archiwizowanych plikow

tar zxvf <plik>
	
# dodawanie uzytkownika
sudo adduser username
cd root/
sudo adduser username sudo

# data utworzenia pliku
stat <plik>
man iptables (pokazuje dokumentacje dla dowolnego polecenia)

# iptables - tablica filter

-A dodanie reguły
$ sudo iptables -A INPUT -p tcp --dport 22 -j ACCEPT
$ sudo iptables -A OUTPUT -p tcp --dport 80 -j REJECT
$ sudo iptables -A INPUT -s 192.168.x.x -j DROP
-A  dodanie reguły
-p  protokół(tcp, icmp, udp)
--dport  port docelowy
--sport  port zrodlowy
-j  co zrobić z pakietem(DROP, REJECT, ACCEPT, LOG)

iptables -F (wyłańczamy wpisy)
iptables -L -n -v (pokazuje wpisy)
sudo iptables-save>reguly
sudo iptables-restore<reguly
## zablokuje cały ruch
sudo iptables -P INPUT DROP

## odblokowanie np logowania sie po ssh 
sudo iptables -A INPUT -p tcp --dport 22 -j ACCEPT

## blokowanie połączen wychodzacych takze SSH ze wzgledu na TCP
sudo iptables -P OUTPUT DROP

## odblokuje polaczenia wychodzace dla protokulu tcp, port 22
sudo iptables -A OUTPUT -p tcp --sport 22 -j ACCEPT

=======================================
Pobieramy skrypt w linuxie na pow�oce systemowej (ang. shell

wget --no-check-certificate http://keca13.vot.pl/algo/skrypt/sciagnij.

wget --no-check-certificate https://raw.githubusercontent.com/keca13/keca13_linux/master/sciagnij.txt

Odpalamy skrypt

sh sciagnij.txt


Lokalizacja skryptu

/etc/init.d/skrypt

sprawdzamy dzia�anie skryptu np. n

http://www.traceroute.org/

wyłaczamy wpisy IPTABLES na: /etc/init.d/skrypt

=====================
man awk

#$2 druga kolumna #',' seoarator kolumny

awk -F ',' '{print $2}' plik.txt

=======================
cat plik.txt | grep 'szukany text'

grep '^napoczatkuwiersza' plik.

grep 'nakoncu wiersza$' plik.txt

history | grep iptables


===============

Usuwamy białe znaki np.^M

#-i bak    tworzy plik o takiej samej nazwie z rozszeżeniem ca.pem.bak

sed -i.bak 's/^M//g' ca.pem

sed -i.bak 's/,//g' contact.txt

^M=press(Ctrl-V Ctrl-M

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
 uzytkownik@serwer.pl:/scieżka/plik_serwer plik_lokalny

#Kopiowanie pliku z dysku lokalnego do zdalnej lokalizacji
$ scp plik_lokalny uzytkownik@serwer.pl:/sciezka/plik_serwer
$ scp -r ./07/ ubuntu@192.168.188.X:/home/ubuntu/


scp debian-10.3.0-amd64-DVD-1.iso root@X.X.X.X:/var/lib/vz/template/iso/

#Kopiowanie pliku ze zdalnej lokalizacji na lokalny dysk
scp root@10.X.0.X:/home/sample.txt /home/sample.txt

# ssh logowanie
sudo service ssh status

OR

sudo systemctl status ssh.service
sudo systemctl enable ssh.service
sudo systemctl start ssh.service
sudo systemctl status ssh.service


ssh root@192.168.188.x -p 2123
ssh root@192.168.188.x
ssh login@host "df -h; ls -la"
cat ~/.ssh/id_rsa.pub | ssh <user>@<hostname> -p <port> 'cat >> ~/.ssh/authorized_keys'
echo 'eeeeeeeeee'>ddd.txt;cat ddd.txt | ssh login@192.168.x.x -p <port> 'cat >> ~/.ssh/ddd.txt'
echo 'eeeeeeeeee'>ddd.txt;cat ddd.txt | ssh login@192.168.x.x 'cat >> ~/.ssh/ddd.txt'
	
ps -ef | grep ssh
sudo netstat -nlp | grep ssh

# tworzenie pary kluczy dla ssh

ssh-keygen
scp ~/.ssh/id_rsa.pub ubuntu@192.168.188.x:~/.ssh

ssh ubuntu@192.168.188.x
cd .ssh/
mv id_rsa.pub authorized_keys
cd ..
chmod 700 .ssh
chmod 600 .ssh/authorized_keys

# sprawdzamy czy serwer ssh jest uruchomiony oraz port

# ustawianie portu do ssh
sudo vim /etc/ssh/sshd_config
Port 5876
PermitRootLogin no
sude service ssh restart

# tworzenei aliasu do logowania sie
# w katalogu urzytkownika tworzymy
notepad.exe ~/.ssh/config

Host alias
 HostName 192.168.x.x
 User admin
 Port 22


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
#cd /media $$ mkdir storage

#this show mounted disk and partision
df -Th

#this show all disk even umounted
fdisk -l

#sudo mount /dev/sda2 /media/storage
#sudo umount /dev/sda2

# in this path is auto default, if after default is problem you just commant disk

vim /etc/fstab

/dev/sda2 /media/storage auto defaults 0 2
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
======================

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
 

==========================================================

scp -P port vi-editor.rd root@192.168.X.X:/home/pi
scp -P port root@192.168.x.x:/home/pi/plik_serwera.txt plik_lokalny.txt
scp -P port plik_lokalny.rd root@192.168.X.X:/home/pi


iptables -F
#sudo service nazwa_uslugi start
#sudo service nazwa_uslugi stop
#sudo service nazwa_uslugi restart
A jak byscie chcieli wylaczyc skrypt to wystarczy skorzystac z polecenia:

#sudo update-rc.d nazwa_uslugi remove

#/etc/rc.local
powyzej,jest to plik przetwarzany przy kazdym starcie systemu 
– mo¿emy tu dodaæ polecenie lub œcie¿kê do skryptu 
który ma siê wykonaæ podczas startu systemu.
Zasada jest banalna – po prostu przed linijk¹ „exit 0” dodajemy np.:

echo "System zostal uruchomiony"
Lub:

/sciezka/do/skryptu
np.:  /etc/init.d/skrypt

# SKRYPTY
## dysk.sh
#!/bin/bash

prepare=`df -h | grep -vE '^Filesystem|tmpfs|udev' | sed -n '1p' | awk '{print $5 " " $1}'`
echo $prepare

partition=$(echo $prepare | awk '{print $2}')

used=$(echo $prepare | awk '{print $1}' | cut -d'%' -f1)
echo $used

if [ "$used" -ge "10" ]; then
     echo " Partycja: $partition uzywa $used% zajetosci dysku z datą: $(date)"
fi
