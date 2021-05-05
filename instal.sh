#!/bin/bash

rnds=$(tr -dc A-Za-z0-9 </dev/urandom | head -c 10)

ipv6s=$(curl -6 -s ifconfig.co | cut -f1-4 -d':')

ipv4s=$(curl -4 -s ifconfig.co)

ifconfig

echo -e "\033[33;4m Port Adeti: \033[0m";read adet

echo -e "\033[33;4m Port Sayisi kactan baslasin: 30000-50000 Tarzi Girin \033[0m";read port1

echo -e "\033[33;4m network kategorisini giriniz. öğrenmek icin yukaridaki acilan ip bölümüne bakiniz ( örnek eth0, ens3 tarzi) \033[0m";read ipvtrr

wget --no-check-certificate https://raw.github.com/barankilic/3proxy/master/3proxyinstaller.sh
chmod +x 3proxyinstaller.sh
./3proxyinstaller.sh

/sbin/ip -6 addr add ${ipv6s}::2/64 dev ${ipvtrr}
/sbin/ip -6 route add default via ${ipv6s}::2
/sbin/ip -6 route add local ${ipv6s}::/64 dev lo
ip -6 addr add ${ipv6s}::2/64 dev lo
/sbin/ifconfig ${ipvtrr} inet6 add ${ipv6s}::2/64
ip -6 addr add ${ipv6s}::2/64 dev ${ipvtrr}
/sbin/ip -6 addr add ${ipv6s}::1/64 dev ${ipvtrr}
/sbin/ifconfig ens3 inet6 add ${ipv6s}::1/64

sudo apt-get install nano

sudo apt-get install net-tools

apt install build-essential -y

apt install git -y

apt install opam -y

cd /root

wget --no-check-certificate https://raw.githubusercontent.com/hypercix/hyur/main/gen64.sh

chmod +x gen64.sh

sed -i 's/\r//' gen64.sh

sed -e "s/MAXCOUNT=500/MAXCOUNT=$adet/" /root/gen64.sh > /root/gene64.sh

chmod +x gene64.sh

sed -i 's/\r//' gene64.sh

sed -e "s/network=2001:19f0:5401:11d7/network=${ipv6s}/" /root/gene64.sh > /root/random2.sh

chmod +x random2.sh

sed -i 's/\r//' random2.sh

sed -e "s/ens321/${ipvtrr}/" /root/random2.sh > /root/random3.sh

chmod +x random3.sh

sed -i 's/\r//' random3.sh

bash random3.sh > /etc/3proxy/ip.list

cd /root

chmod +x ip.list2.sh

bash ip.list2.sh

cat >> /etc/sysctl.conf << END
net.ipv6.ip_nonlocal_bind = 1
fs.file-max = 700000
net.ipv4.tcp_timestamps=1
net.ipv4.tcp_max_tw_buckets=1440000
net.ipv4.ip_local_port_range = 512 65535
net.core.somaxconn = 61440
net.core.rmem_max = 12582912
net.core.wmem_default = 31457280
net.core.wmem_max = 12582912
net.ipv4.tcp_keepalive_time = 300
net.ipv4.tcp_keepalive_probes = 5
net.ipv4.tcp_keepalive_intvl = 15
net.ipv4.tcp_fin_timeout = 15
net.ipv4.tcp_rfc1337 = 1
net.core.optmem_max = 25165824
net.ipv4.tcp_mem = 65536 131072 262144
net.ipv4.udp_mem = 65536 131072 262144
net.ipv4.tcp_rmem = 8192 87380 16777216
net.ipv4.udp_rmem_min = 66384
net.ipv4.tcp_wmem = 8192 65536 16777216
net.ipv4.udp_wmem_min = 76384
net.ipv4.xfrm4_gc_thresh = 52768
net.netfilter.nf_conntrack_tcp_timeout_established=200
kernel.threads-max = 220000
kernel.pid_max = 200000
END

sysctl -p

apt install libproxy-tools -y

cd /etc/3proxy

rm -rf /etc/3proxy/3proxy.cfg

cd /etc/3proxy/ && wget 'https://raw.githubusercontent.com/hypercix/hyur/main/3proxy.cfg'

cd /etc/3proxy/ && wget 'https://raw.githubusercontent.com/hypercix/hyur/main/gerandom.sh'

chmod +x gerandom.sh

sed -i 's/\r//' /etc/3proxy/gerandom.sh

cd /etc/3proxy/

./gerandom.sh

cd /etc/3proxy

chmod +x thuurs.sh

sed -i -e 's/\r$//' thuurs.sh

./thuurs.sh

cd /etc/3proxy

chmod +x thurs.sh

sed -i -e 's/\r$//' thurs.sh

./thurs.sh
