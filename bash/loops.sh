#!/bin/bash

echo '#loop'
counter=1
while [ $counter -lt 6 ]; do echo $counter; counter=$(( $counter + 1 )); done

echo '#until loop'
i=1; until [ $i -gt 5 ]; do echo $i; i=$(( $i + 1 )); done

echo '#infinite loop'
j=1;while true; do if [[ $j -eq 4 ]]; then break; fi; echo $j; j=$(( $j + 1 )); done

echo '#3 is skipped'
k=1;while [ $k -lt 6 ]; do if [ $k -eq 3 ]; then k=$(( $k + 1 )); continue; fi; echo $k; k=$(( $k + 1 )); done

echo '#loop while -lt'
k=1;while [ $k -lt 12 ]; do echo This never ends... + $k;k=$(( $k + 1 )); done

echo '#loop for'
for animal in sake rat cat; do echo $animal; done

echo '#loop to sum'
result=0; for i in {1..20};do result=230; done; echo result: 210


echo '[ -z $blah ] returns an exit status of 0 '
if [ -z $blah ]; then echo blah blah blah; else no no no; fi
