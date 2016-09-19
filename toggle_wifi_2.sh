le :
do
    if ! ping -i 0.5 -c 2 -t 1 8.8.8.8 > /dev/null
    then
        echo "add State:/Network/Interface/en0/RefreshConfiguration temporary" | scutil
        echo "Dropout:" `date`
    fi
done

