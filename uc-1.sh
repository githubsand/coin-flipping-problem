#!/bin/bash -x
Head=1
Tail=0
flip_coin()
{
 output=$((RANDOM%2))
 if [[ $Head -eq $output ]]
 then
    echo "After flipping the coin $Head come"
 else
    echo "After flipping the coin $Tail come"
 fi
}
flip_coin
