cat titanic.csv | gawk -F, '$3 == 2 && $13 ~ /S/' | sed 's/female/F/' | sed 's/male/M/' | gawk -F, '{
    if ($7 != "" && $7 ~ /^[0-9]+(\.[0-9]+)?$/) {
        sum += $7;
        count++;
    }
} END { if (count > 0) print(sum / count); }'
