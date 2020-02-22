#!/bin/bash

list="ls | grep area.nexus_*"
path_to_pda=""

for i in $list
do
$path_to_pda/pda input.tree.nex $i.out -ts $i -compl Outgroup #use name of Outgroup in -compl flag
done
