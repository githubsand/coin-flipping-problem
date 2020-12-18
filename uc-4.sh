#!/bin/bash -x
echo "Read a number Howmany time we wnat to flip the coin"
read n
HHH=0
TTT=0
HTH=0
THT=0
HHT=0
TTH=0
HTT=0
THH=0
i=$n
find_percentageof_Coin()
{
 while [[ $n -gt 0 ]]
 do
     output1=$((RANDOM%8))
     case $output1 in
     0) echo "its mean three head comes"
        let HHH++;;
     1) echo "its mean three tail comes"
        let TTT++;;
     2) echo "its mean one head and after two tail comes"
        let HTT++;;
     3) echo "its mean one tail and after two haed comes"
        let THH++;;
     4) echo "its mean one head one tail and then one head comes"
        let HTH++;;
     5) echo "its mean one tail one head and then one tail comes"
        let THT++;;
     6) echo " its mean one head one head and then one tail comes"
        let HHT++;;
     7) echo " its mean one tail one tail and then one head comes"
        let TTH++;;
     esac
    let n--
 done
percentageof_3head=`awk 'BEGIN{print '$HHH'/'$i'*'100'}'`
percentageof_3tail=`awk 'BEGIN{print '$TTT'/'$i'*'100'}'`
percentageof_1head2tail=`awk 'BEGIN{print '$HTT'/'$i'*'100'}'`
percentageof_1tail2head=`awk 'BEGIN{print '$THH'/'$i'*'100'}'`
percentageof_1h1t1h=`awk 'BEGIN{print '$HTH'/'$i'*'100'}'`
percentageof_1t1h1t=`awk 'BEGIN{print '$THT'/'$i'*'100'}'`
percentageof_1h1h1t=`awk 'BEGIN{print '$HHT'/'$i'*'100'}'`
percentageof_1t1t1h=`awk 'BEGIN{print '$TTH'/'$i'*'100'}'`

echo "Percentage of  three Head comes equal to : $percentageof_3head%"
echo "Percentage of three tail comes equal to : $percentageof_3tail%"
echo "Percentage of one Head and two tail comes equal to : $percentageof_1head2tail%"
echo "Percentage of one tail and two Head comes equal to : $percentageof_1tail2head%"
echo "Percentage of one head and one tail and one head comes equal to : $percentageof_1h1t1h%"
echo "Percentage of one tail and one Head one tail comes equal to : $percentageof_1t1h1t%"
echo "Percentage of one head and one Head one tail comes equal to : $percentageof_1h1h1t%"
echo "Percentage of one tail and one tail one head comes equal to : $percentageof_1t1t1h%"
}
find_percentageof_Coin
