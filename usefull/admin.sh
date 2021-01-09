#!/bin/bash

function show_menu() {
    date
    echo "==========="
    echo "Main menu"
    echo "==========="
    echo "1. Operating system Info"
    echo "2. Hostname"
    echo "3. Disk usage"
    echo "4. Exit"
}

function read_input(){
 read -p "Enter your choice [ 1 - 4 ] " choice   
 case $choice in
 1) system_info ;;
 2) host_info ;;
 3) disk_info ;;
 4) exit 0 ;;
 *)
        echo "Please select number [ 1 - 4 ]"
 esac
}

function system_info(){
    echo "System Info"
      LSB=/usr/bin/lsb_release
    if [ -x "$LSB" ]; then
        $LSB -a
    else
        echo "$LSB command is not installed" 
    fi 
}

function host_info(){
    echo "Host Info"
    echo "Hostname: $(hostname -s)"
    echo "DNS domain: $(hostname -d)"
    echo "Full dns name: $(hostname -f)"
    echo "IPs: $(hostname -I)"
    
}

function disk_info(){
    echo "Disk Info"
    df -H | grep -vE "^Filesystem|tmpfs|udev" | awk '{print $1 " " $2 " " $5 " " $6}'
}

show_menu
read_input