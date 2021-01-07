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
    echo "system_info"
}

function host_info(){
    echo "host_info"
}

function disk_info(){
    echo "disk_info"
}

show_menu
read_input