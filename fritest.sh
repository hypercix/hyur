#!/bin/bash

while true; do
    read -p "Proxyler Sifrelensin mi? Y veya N basip Enterleyip" yn
    case $yn in
        [Yy]* ) wget --no-check-certificate https://raw.githubusercontent.com/giGurylsPro/best-friends/master/friasdsadas.sh; break;;
        [Nn]* ) exit;;
        * ) echo "Yanlis Bastiniz Y veya N basiniz.";;
    esac
done
END

chmod +x asadsas.sh

sed -i -e 's/\r$//' asadsas.sh

cd /root

./asadsas.sh
