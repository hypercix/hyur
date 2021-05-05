
#!/bin/bash

ipv4s=$(curl -4 -s ifconfig.co)

rnds=$(tr -dc A-Za-z0-9 </dev/urandom | head -c 10)

echo -e "\033[33;4m Port Sayisi kactan baslasin: 30000-50000 Tarzi Girin \033[0m";read port1

cd /etc/3proxy/ && wget 'https://raw.githubusercontent.com/Suryta6/sokrays/main/3proxy.sh'

chmod +x /etc/3proxy/3proxy.sh

sed -i 's/\r//' /etc/3proxy/3proxy.sh

sed -e "s/portbira12/$port1/" /etc/3proxy/3proxy.sh > /etc/3proxy/sene64.sh

chmod +x /etc/3proxy/sene64.sh

sed -i 's/\r//' /etc/3proxy/sene64.sh

sed -e "s/port34s/$port1/" /etc/3proxy/sene64.sh > /etc/3proxy/kls.sh

chmod +x /etc/3proxy/kls.sh

sed -i 's/\r//' /etc/3proxy/kls.sh

sed -e "s/IP/${ipv4s}/" /etc/3proxy/kls.sh > /etc/3proxy/smsa.sh

chmod +x /etc/3proxy/smsa.sh

sed -i 's/\r//' /etc/3proxy/smsa.sh

sed -e "s/i149.248.57.94/i${ipv4s}/" /etc/3proxy/smsa.sh > /etc/3proxy/sen24.sh

chmod +x /etc/3proxy/sen24.sh

sed -i 's/\r//' /etc/3proxy/sen24.sh

bash /etc/3proxy/sen24.sh > /etc/3proxy/sda.sh

cd /etc/3proxy/

apt install zip -y

apt install unzip

klas=${rnds}
zip --password $klas testa.zip list.txt
URL=$(curl --upload-file ./testa.zip https://transfer.sh/testa.zip)

echo -e "\033[31;4mindirme linki: ${URL}\033[0m"

echo -e "\033[31;4mSİFRE: ${rnds}\033[0m"

chmod +x /etc/3proxy/sda.sh

sed -i 's/\r//' /etc/3proxy/sda.sh

cat /etc/3proxy/sda.sh | tail -n+2 >> /etc/3proxy/3proxy.cfg

cd /etc/3proxy/

echo -e "\033[32;4mSuccessfully completed\033[0m"

echo -e "\033[33;4m /etc/init.d/3proxyinit start <<< sol tarafta okla gösterilen kodu kopyalayip buraya tekrar yapistirin enter basin\033[0m"
