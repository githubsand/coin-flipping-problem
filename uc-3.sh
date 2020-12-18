#!/bin/bash -x
echo "Read a number Howmany time we wnat to flip the coin"
read n
HH=0
TT=0
HT=0
TH=0
head_count=0
tail_count=0
i=$n
find_percentageof_Coin()
{
 while [[ $n -gt 0 ]]
 do
     output1=$((RANDOM%4))
     case $output1 in
     0) echo "its mean two head comes"
        let HH++;;
     1) echo "its mean two tail comes"
        let TT++;;
     2) echo "its mean one head and after one tail comes"
        let HT++;;
     3) echo "its mean one tail and after one haed comes"
        let TH++;;
     esac
    let n--
 done
percentageof_twohead=`awk 'BEGIN{print '$HH'/'$i'*'100'}'`
percentageof_twotail=`awk 'BEGIN{print '$TT'/'$i'*'100'}'`
percentageof_headtail=`awk 'BEGIN{print '$HT'/'$i'*'100'}'`
percentageof_tailhead=`awk 'BEGIN{print '$TH'/'$i'*'100'}'`
echo "Percentage of  two Head comes equal to : $percentageof_twohead%"
echo "Percentage of two tail comes equal to : $percentageof_twotail%"
echo "Percentage of one Head and one tail comes equal to : $percentageof_headtail%"
echo "Percentage of one tail and one Head comes equal to : $percentageof_tailhead%"
}
find_percentageof_Coin
