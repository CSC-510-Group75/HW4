cat titanic.csv | awk -F, '$3 == 2 && $13=="S"' | sed 's/male/M/' | sed 's/female/F/' | awk -F, '{print $0} if ($7 != "") { sum += $7; count++ } END { if (count > 0) print "Average age :"sum/count}'
