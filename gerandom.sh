#!/bin/bash

while true; do
    read -p "Sifresiz proxy icin V, Sifreli proxy icin L basip enterleyin" vl
    case $vl in
        [Vv]* ) cd /etc/3proxy/ && wget 'https://raw.githubusercontent.com/hypercix/hyur/main/thuurs.sh'; break;;
        [Ll]* ) cd /etc/3proxy/ && wget 'https://raw.githubusercontent.com/hypercix/hyur/main/thurs.sh'; break;;
        * ) echo "Please press one L or V.";;
    esac
done
END
