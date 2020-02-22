#!/bin/bash

liste="ls | grep *out"

echo $liste

for i in $liste
do 
head -47 $i > $i.temp # enter last row n that contain PD_compl results
tail -31 $i.temp > $i.result # enter first row n that contain PD_compl results
rm $i.temp
done

for i in $liste
do
sed 's/  / /g' $i.result > $i.temp
sed 's/  / /g' $i.temp > $i.temp2
sed 's/  / /g' $i.temp2 > $i.temp3
sed 's/  / /g' $i.temp3 > $i.csv
rm $i.temp*
done

rm *result
rm ls.result
rm grep.result
rm grep.csv
rm ls.csv
