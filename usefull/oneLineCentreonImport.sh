#!/bin/bash

#centreon -u admin -p centreon -e > /tmp/clapi-export.txt
#centreon -u admin -p centreon -o STPL -a show

######## Link Host TEMPLATE with Service Template #####
#centreon -u admin -p centreon -o STPL -a addhosttemplate -v "MyTemplate-Service;generic-active-host-custom"


#echo "STPL;ADD;DISK6;DISK_Linux;" | awk -F";" '/^STPL;ADD;/ { print $0 }' | cut -d ";" -f 3- | while read i ; do centreon -u admin -p centreon -o STPL -a ADD -v "$i" ; done
#cat DISK2.csv|awk -F";" '/^STPL;ADD;/ { print $0 }' | cut -d ";" -f 3-|while read i;do centreon -u admin -p centreon -o STPL -a ADD -v "$i";done
#cat DISK2.csv|awk -F";" '/^STPL;ADD;/ { print $0 }' | cut -d ";" -f 3-|while read i;do echo "$i";done

######### import from clapi #########
#cat clapi-export6.txt|awk -F";" '/^STPL;ADD;DISK2;/ { print $0 }' | cut -d ";" -f 3-|while read i;do centreon -u admin -p centreon -o STPL -a ADD -v "${i}";done
#cat clapi-export6.txt|awk -F";" '/^STPL;setparam;DISK2;/ { print $0 }' | cut -d ";" -f 3-|while read i;do centreon -u admin -p centreon -o STPL -a setparam -v "${i}";done
#cat clapi-export6.txt|awk -F";" '/^STPL;setmacro;DISK2;/ { print $0 }' | cut -d ";" -f 3-|while read i;do centreon -u admin -p centreon -o STPL -a setmacro -v "${i}";done


######### import from clapi #########
# STPL
#centreon -u admin -p centreon -o STPL -a show
#cat clapi-export6.txt|awk -F";" '/^STPL;ADD;DISK2;/ { print $0 }' | cut -d ";" -f 3-|while read i;do centreon -u admin -p centreon -o STPL -a ADD -v "${i}";done
#cat clapi-export6.txt|awk -F";" '/^STPL;setparam;DISK2;/ { print $0 }' | cut -d ";" -f 3-|while read i;do centreon -u admin -p centreon -o STPL -a setparam -v "${i}";done
#cat clapi-export6.txt|awk -F";" '/^STPL;setmacro;DISK2;/ { print $0 }' | cut -d ";" -f 3-|while read i;do centreon -u admin -p centreon -o STPL -a setmacro -v "${i}";done

# CMD
#centreon -u admin -p centreon -o CMD -a show 
#cat clapi-export6.txt|awk -F";" '/^CMD;ADD;check_ssh;/ { print $0 }' | cut -d ";" -f 3-|while read i;do centreon -u admin -p centreon -o CMD -a ADD -v "${i}";done
#cat clapi-export6.txt|awk -F";" '/^CMD;setparam;check_ssh;/ { print $0 }' | cut -d ";" -f 3-|while read i;do centreon -u admin -p centreon -o CMD -a setparam -v "${i}";done
#cat clapi-export6.txt|awk -F";" '/^CMD;setargumentdescr;check_ssh;/ { print $0 }' | cut -d ";" -f 3-|while read i;do centreon -u admin -p centreon -o CMD -a setargumentdescr -v "${i}";done


##### IMPORT Object ##############
echo "ADD STPL Object"
read -p "Press any key to continue or CTRL-C to abort"
cat $1|awk -F";" '/^STPL;ADD;/ { print $0 }' | cut -d ";" -f 3-|while read i;do centreon -u admin -p centreon -o STPL -a ADD -v "${i}";done
cat $1|awk -F";" '/^STPL;ADD;/ { print $0 }' | cut -d ";" -f 3-|while read i;do centreon -u admin -p centreon -o STPL -a ADD -v "${i}";done

echo "================="
echo "setparam STPL Object"
read -p "Press any key to continue or CTRL-C to abort"
cat $1|awk -F";" '/^STPL;setparam;/ { print $0 }' | cut -d ";" -f 3-|while read i;do centreon -u admin -p centreon -o STPL -a ADD -v "${i}";done

echo "================="
echo "setmacro STPL Object"
read -p "Press any key to continue or CTRL-C to abort"
cat $1|awk -F";" '/^STPL;setmacro;/ { print $0 }' | cut -d ";" -f 3-|while read i;do centreon -u admin -p centreon -o STPL -a ADD -v "${i}";done

echo "END"