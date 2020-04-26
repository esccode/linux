iptables -F (wyłańczamy wpisy)
iptables -L (pokazuje wpisy)

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
