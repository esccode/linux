#!/bin/bash

prepare=`df -h | grep -vE '^Filesystem|tmpfs|udev' | sed -n '1p' | awk '{print $5 " " $1}'`
echo $prepare

partition=$(echo $prepare | awk '{print $2}')

used=$(echo $prepare | awk '{print $1}' | cut -d'%' -f1)
echo $used

if [ "$used" -ge "10" ]; then
     echo " Partycja: $partition uzywa $used% zajetosci dysku z datą: $(date)"
fi
