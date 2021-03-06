# [wzorzec] <program>
# awk -f skrypt.awk plik.txt
# /cmte...,/ { print $0;}
# awk -F"," '{ print  $1; }' P00000001-ALL.csv
# awk -F"," '{ print  $5 ", " $1; }' P00000001-ALL.csv
# awk -f skrypt.awk -F"," P00000001-ALL.csv

# awk -f skrypt.awk -F"," P00000001-ALL.csv > plik.txt

# /^cmte/ { print "Witaj: "$0;}

# BEGIN { print "Poczatek"}
# # /.*/ { print $1 " " $2; }
# /C004*/{ print $2 "," $1 }
# # { print $1 }
# END { print "Koniec"}

# awk -f skrypt.awk  P00000001-ALL.csv

# BEGIN { ile=0;FS="," }

# # $1 == "Rick" { print $0 }
# /Rick/ { print $0 }
# { ile=ile+1 }
# END {print "Sume wierszy: "ile }


# BEGIN { FS="," }
# # {
# # if ( $6 ~ /LANIER/ ) {
# # print $3
# # }
# # }

# ( $5 == "\"LANIER" ) || ( $2 == "bar" ) { print $16 }


# BEGIN { ile=0 }
# { ile=ile+1 }
# # /.*/ { print $0; }
# END { print "razem = "ile}
# Print the last line
    # BEGIN {print "Poczatek" }
    #   {line = $0}
    # #   {print line}
    # END {print line }

# Add up first column, print sum and average:
    #    { s=0 }
       { s += $1 }
  END  { print "sum is", s, " average is", s/NR }
  