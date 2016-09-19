#!/bin/sh

while :
do
    if ! ping -i 0.5 -c 2 -t 1 8.8.8.8 > /dev/null
    then
        networksetup -setairportpower en0 off; networksetup -setairportpower en0 on        
        echo "Dropout:" `date`
    fi
done
