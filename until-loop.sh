#!/bin/bash

X=$1
until [ $X -gt $2 ]; do
    echo "liczba $X jest mniejsza od liczby $2";
    X=$(($X + 1));
done

