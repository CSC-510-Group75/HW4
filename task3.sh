cat titanic.csv | awk -F, '$3 == 2 && $13=="S"' | sed 's/male/M/' | sed 's/female/F/' | awk -F; if ($7 != "") { sum += $7; count++ } ; print $0} END { if (count > 0) print "Average age :"sum/count}'
