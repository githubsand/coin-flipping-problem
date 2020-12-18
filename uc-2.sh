#!/bin/bash -x
echo "Read a number Howmany time we wnat to flip the coin"
read n
Head=1
Tail=0
head_count=0
tail_count=0
i=$n
find_percentageof_Coin()
{
 while [[ $n -gt 0 ]]
 do
     output=$((RANDOM%2))
     if [[ $output -eq $Head ]]
       then
           let head_count++
     else
         let tail_count++ 
     fi
    let n--
 done
percentageof_head=`awk 'BEGIN{print '$head_count'/'$i'*'100'}'`
percentageof_tail=`awk 'BEGIN{print '$tail_count'/'$i'*'100'}'`
echo "Percentage of Head comes equal to : $percentageof_head%"
echo "Percentage of Tail comes equal to : $percentageof_tail%"
}
find_percentageof_Coin
