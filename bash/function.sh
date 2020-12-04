#!/bin/bash

#title           : 
#description     : Materiał z Strefy Kursów - Kurs Bash
#author          : Piotr "TheRealMamuth" Kośka
#copyright       : Strefa Kursów
#date            : 25.05.2018
#version         : v1.0   
#usage           :
#notes           :
#bash_version    : 4.4.12(1)-release
#editor          : visual studio code
#==============================================================================
# zmienne
liczba1=$1
liczba2=$2

#function

function argu () {
        if [ "$#" -ge 2 ]; then
            echo ""
            return 1
        else
            echo ""
            return 0
        fi
}

function artymetyka () {

    echo "Nasze liczby $1 i $2 beda mialy wynik w zaleznos od twoejeg dzialania:"

    function dodawnie () {
        echo "Wynik dodawania $1 + $2 = $(( $1 + $2 ))"
    }

    function odejmowanie () {
        echo "Wynik odejmowania $1 - $2 = $(( $1 - $2 ))"
    }

}

function main () {
    argu $1 $2
    RETURN_VAL=$?

    if [ $RETURN_VAL -eq 1 ]; then

        echo -n "Co chcesz zrobic: + || -: "; read dzialanie
        if [ "$dzialanie" = "+" ]; then
            artymetyka $1 $2
            dodawnie $1 $2
        fi

        if [ "$dzialanie" = "-" ]; then
            artymetyka $1 $2
            odejmowanie $1 $2
        fi
        exit 0
    else 
        echo "Podale za malo argumentow. Powinien podac [arg1] [arg2]"
        exit 1
    fi
}

#sktypt

main $liczba1 $liczba2