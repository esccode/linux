#!/bin/bash
#
#
wget https://raw.githubusercontent.com/keca13/keca13_linux/master/skrypt.txt
mv skrypt.txt /etc/init.d/skrypt
chmod +x /etc/init.d/skrypt
ln -s /etc/init.d/skrypt /etc/rc0.d/S99skrypt
ln -s /etc/init.d/skrypt /etc/rc1.d/S99skrypt
ln -s /etc/init.d/skrypt /etc/rc2.d/S99skrypt
ln -s /etc/init.d/skrypt /etc/rc3.d/S99skrypt
ln -s /etc/init.d/skrypt /etc/rc4.d/S99skrypt
ln -s /etc/init.d/skrypt /etc/rc5.d/S99skrypt
ln -s /etc/init.d/skrypt /etc/rc6.d/S99skrypt
