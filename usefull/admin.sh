#!/bin/bash

function show_menu() {
    date
    echo "==========="
    echo "Main menu"
    echo "==========="
    echo "1. Operating system Info"
    echo "2. Hostname"
    echo "3. Disk usage"
    echo "4. Process"
    echo "5. Exit"
}

function process_info(){
    clear    
    echo "1. Show all process"
    echo "2. kill a process"
    read -p "Enter your choice [ 1 -2 ] " choice
        case $choice in
        1) show_all_process ;;
        2) kill_process ;;
        *)
            echo "Please enter number [ 1 - 2] "
    esac
}

function show_all_process () {
    clear
    echo "Show all process"
    ps -ef | more
}

function kill_process () {
    clear
    echo  "Please enter PID of the process you would like to kill:"
    read pidkill
    kill -9 $pidkill && echo "Process terminated successfully" || echo "Process failed to terminate"
}



function read_input(){
    read -p "Enter your choice [ 1 - 4 ] " choice   
    case $choice in
        1) system_info ;;
        2) host_info ;;
        3) disk_info ;;
        4) process_info ;;
        5) exit 0 ;;
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