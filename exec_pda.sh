#!/bin/bash

liste="ls | grep area.nexus_*"

for i in $liste
do
/home/philipp/apps/pda-1.0.3-Linux/bin/pda input.tree.nex $i.out -ts $i -compl Outgroup #use name of Outgroup in -compl flag
done

