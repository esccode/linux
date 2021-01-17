#!/bin/bash
echo "Podaj numer miesiąca"
read d
case "$d" in
  "1") echo 'Styczeń, zimno ... marzę o nartach' ;;
  "2") echo 'Luty, wakacje zimowe hurra!' ;;
  "3") echo 'Marzec, tylko do wiosny ...' ;;
  "4") echo 'Kwiecień, wiosna każdy to powie ...' ;;
  "5") echo 'Maj, "I wtedy przyszedł maj zamieszał w moim sercu ..." ' ;;
  "6") echo 'Czerwiec, no no lato tuż tuż' ;;
  "7") echo 'Lipiec, wakacje! :)' ;;
  "8") echo 'Sierpień, wakacje! :)' ;;
  "9") echo 'Wrzesień, hej ho, hej ho do szkoły by się szło :)' ;;
  "10") echo 'Październik, ah ta jesień ...' ;;
  "11") echo 'Listopad, szaro, buro i ponuro' ;;
  "12") echo 'Grudzień, święta, prezenty, sylwester' ;;
  *) echo "Nic nie wybrałeś"
esac
