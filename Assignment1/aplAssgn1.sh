#!/bin/sh
echo "Enter the city name :"
read x
echo "Enter the rating: "
read y
grep -i $x A1.csv > output_file.csv
awk -F\; '{ if($9>R)print ; }' R="$y" output_file.csv
cut -d\; -f2,4,5,9 output_file.csv
awk -F\; '{ sum+=$8 } END { if(NR>0) print "Average cost is: " sum / NR }' output_file.csv
grep -i "Cafe\|Hotel" output_file.csv | cut -d\; -f2,4,5,9



