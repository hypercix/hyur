#!/bin/bash
port=port34s
count=1
for i in `cat ip.list`; do
    echo "proxy -6 -n -a -DiINTERFACE -osOPTIONS -p$port -i149.248.57.94 -e$i"
    echo 189.358.67.74:$port >> list.txt
    ((port+=1))
    ((count+=1))
    if [ $count -eq 10001 ]; then
        exit
    fi
done
echo ""
echo "admin -p3200"
echo ""
echo ""
