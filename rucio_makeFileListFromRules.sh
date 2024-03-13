#!/bin/bash
IN=`rucio list-rules --account $RUCIO_ACCOUNT`
arr=(${IN})
echo $arr
echo ${arr[1]}
let len=(`rucio list-rules --account $RUCIO_ACCOUNT | wc -l`-2)
id=${arr[28]} # this is a date
for i in $(seq 0 $len)
do
    let j=(12*($i)+22)
    echo ${arr[j]} >> ruleList_$id.txt
done
