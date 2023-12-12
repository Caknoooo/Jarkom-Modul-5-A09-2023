# Jarkom-Modul-5-A09-2023
**Praktikum Jaringan Komputer Modul 5 Tahun 2023**

## Author
| Nama | NRP | Github |
|---------------------------|------------|--------|
|Andika Laksana Putra | 5025211001 | https://github.com/DikaPutra07 |
|M. Naufal Badruttamam | 5025211240 | https://github.com/Caknoooo |

# Laporan Resmi
Disini kami dari kelompok **A09** akan membuat laporan resmi pada Praktikum Jarkom Modul 5.

## Daftar Isi
- [Laporan Resmi](#laporan-resmi)
- [Daftar Isi](#daftar-isi)
   - [Topologi VLSM](#topologi-vlsm)
   - [Topologi GNS3](#topologi-gns3)
   - [Prefix IP](#prefix-ip)
   - [Rute](#rute)
- [Persiapan](#persiapan)
   - [Tree](#tree)
   - [Pembagian IP](#pembagian-ip)
   - [Subnetting](#subnetting)
   - [Routing](#routing)
- [Konfigurasi](#konfigurasi)
   - [DNS Server](#dns-server)
   - [DHCP Server](#dhcp-server)
   - [DHCP Relay](#dhcp-relay)
   - [Web Server](#web-server)
   - [Client](#client)
- [Jawaban](#jawaban)
- [Soal 1](#Soal-1)
   - [Script](#script)
   - [Testing](#Testing)
- [Soal 2](#Soal-2)
   - [Script](#script-1)
   - [Testing](#Testing-1)
- [Soal 3](#Soal-3)
   - [Script](#script-2)
   - [Testing](#Testing-2)
- [Soal 4](#Soal-4)
   - [Script](#script-3)
   - [Testing](#Testing-3)
- [Soal 5](#Soal-5)
   - [Script](#script-4)
   - [Testing](#Testing-4)
- [Soal 6](#Soal-6)
   - [Script](#script-5)
   - [Testing](#Testing-5)
- [Soal 7](#Soal-7)
   - [Script](#script-6)
   - [Testing](#Testing-6)
- [Soal 8](#Soal-8)
   - [Script](#script-7)
   - [Testing](#Testing-7)
- [Soal 9](#Soal-9)
   - [Script](#script-8)
   - [Testing](#Testing-8)
- [Soal 10](#Soal-10)
   - [Script](#script-9)
   - [Testing](#Testing-9)

## Topologi VLSM 

![image](https://github.com/Caknoooo/Jarkom-Modul-4-A09-2023/assets/92671053/4cf24761-a255-4788-b4de-015f6ee788f7)

## Topologi GNS3

![image](https://github.com/Caknoooo/Jarkom-Modul-4-A09-2023/assets/92671053/b6c16c22-8f42-4ec2-8621-d9c1ef40f617)

## Prefix IP

Kelompok kami memiliki prefix IP ``192.173``

## Rute
Berikut adalah Rute yang telah kami buat dari hasil [VLSM](#vlsm) sebagai berikut 

![image](https://github.com/Caknoooo/Jarkom-Modul-4-A09-2023/assets/92671053/a889600d-b35e-4f3c-8608-68a7a32a1f08)


## Persiapan 

### Tree
Tree yang kami buat didapatkan dari hasil pengelompokkan [VLSM](#vlsm) sebagai berikut 

![VLSM Mod 5 A09](https://github.com/Caknoooo/Jarkom-Modul-4-A09-2023/assets/92671053/3a104619-090e-479a-bbc0-3da1ac7e27ae)

### Pembagian IP
Berikut adalah pembagian IP yang telah kami dapatkan dari hasil [Tree](#tree) tersebut

![image](https://github.com/Caknoooo/Jarkom-Modul-4-A09-2023/assets/92671053/109bada5-5deb-48fb-9e50-d473b7428435)

### Subnetting 
Berikut merupakan subneeting yang telah kami sesuaikan dengan ``IP`` yang telah didapatkan.

#### Aura
```
auto eth0
iface eth0 inet dhcp

#A3
auto eth1
iface eth1 inet static
address 192.173.1.125
netmask 255.255.255.252

#A4
auto eth2
iface eth2 inet static
address 192.173.1.121
netmask 255.255.255.252
```

#### Heiter 
```
auto lo
iface lo inet loopback

#A3
auto eth0
iface eth0 inet static
address 192.173.1.126
netmask 255.255.255.252
gateway 192.173.1.125

#A2
auto eth1
iface eth1 inet static
address 192.173.8.1
netmask 255.255.248.0

#A1
auto eth2
iface eth2 inet static
address 192.173.4.1
netmask 255.255.252.0
```

#### Frieren 
```
auto lo
iface lo inet loopback

#A4
auto eth0
iface eth0 inet static
address 192.173.1.122
netmask 255.255.255.252
gateway 192.173.1.121

#A5
auto eth1
iface eth1 inet static
address 192.173.1.117
netmask 255.255.255.252

#A6
auto eth2
iface eth2 inet static
address 192.173.1.113
netmask 255.255.255.252
```

#### Himmel 

```
auto lo
iface lo inet loopback

#A6
auto eth0
iface eth0 inet static
address 192.173.1.114
netmask 255.255.255.252
gateway 192.173.1.113

#A7
auto eth1
iface eth1 inet static
address 192.173.2.1
netmask 255.255.254.0

#A8
auto eth2
iface eth2 inet static
address 192.173.1.129
netmask 255.255.255.128
```

#### Fern 
```
auto lo
iface lo inet loopback

#A8
auto eth0
iface eth0 inet static
address 192.173.1.130
netmask 255.255.255.128
gateway 192.173.1.129

#A9
auto eth1
iface eth1 inet static
address 192.173.1.109
netmask 255.255.255.252

#A10
auto eth2
iface eth2 inet static
address 192.173.1.105
netmask 255.255.255.252
```

#### Revolte
```
auto eth0
iface eth0 inet static
address 192.173.1.106
netmask 255.255.255.252
gateway 192.173.1.105
```

#### Richter
```
auto eth0
iface eth0 inet static
address 192.173.1.110
netmask 255.255.255.252
gateway 192.173.1.109
```

#### Stark
```
auto eth0
iface eth0 inet static
address 192.173.1.118
netmask 255.255.255.252
gateway 192.173.1.117
```

#### Sein 
```
auto eth0
iface eth0 inet static
address 192.173.4.2
netmask 255.255.252.0
gateway 192.173.4.1
```

#### Client 
```
auto eth0
iface eth0 inet dhcp
```

### Routing 
Setelah melakukan subnetting pada setiap ``node``. Sekarang kami akan beralih pada setup ``routing`` sebagai berikut 

#### Aura 
```
#Heiter
up route add -net 192.173.4.0 netmask 255.255.252.0 gw 192.173.1.126
up route add -net 192.173.8.0 netmask 255.255.248.0 gw 192.173.1.126

#Frieren
up route add -net 192.173.1.116 netmask 255.255.255.252 gw 192.173.1.122
up route add -net 192.173.1.112 netmask 255.255.255.252 gw 192.173.1.122
up route add -net 192.173.2.0 netmask 255.255.254.0 gw 192.173.1.122
up route add -net 192.173.1.128 netmask 255.255.255.128 gw 192.173.1.122
up route add -net 192.173.1.108 netmask 255.255.255.252 gw 192.173.1.122
up route add -net 192.173.1.104 netmask 255.255.255.252 gw 192.173.1.122
```

#### Heiter 
```
up route add -net 0.0.0.0 netmask 0.0.0.0 gw 192.173.1.125
```

#### Frieren 
```
up route add -net 192.173.2.0 netmask 255.255.254.0 gw 192.173.1.114
up route add -net 192.173.1.128 netmask 255.255.255.128 gw 192.173.1.114
up route add -net 192.173.1.108 netmask 255.255.255.252 gw 192.173.1.114
up route add -net 192.173.1.104 netmask 255.255.255.252 gw 192.173.1.114
up route add -net 0.0.0.0 netmask 0.0.0.0 gw 192.173.1.121
```

#### Himmel 
```
up route add -net 192.173.1.108 netmask 255.255.255.252 gw 192.173.1.130
up route add -net 192.173.1.104 netmask 255.255.255.252 gw 192.173.1.130
up route add -net 0.0.0.0 netmask 0.0.0.0 gw 192.173.1.113
```

#### Fern 
```
up route add -net 0.0.0.0 netmask 0.0.0.0 gw 192.173.1.129
```

## Konfigurasi 
Sebelum melakukan konfigurasi terhadap masing-masing ``router`` yang telah ditentukan, disini kita harus menjalankan perintah berikut pada router ``Aura`` 

```
iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE -s 192.173.0.0/16
```

Setelah itu, jangan lupa untuk tiap node agar di berikan ``nameserver 192.168.122.1`` agar dapat terhubung dengan internet

### DNS Server
Disini yang bertindak sebagai ``DNS Server`` adalah router ``Richter`` dan akan dilakukan konfigurasi sebagai berikut dengan bantuan ``bash`` nantinya 

```sh
# Richter
echo 'nameserver 192.168.122.1' >/etc/resolv.conf

apt update
apt install bind9 -y

echo '
options {
  directory "/var/cache/bind";
  forwarders {
    192.168.122.1;
  };
  allow-query {any;};
  auth-nxdomain no; # conform to RFC1035
  listen-on-v6 {any;};
}' > /etc/bind/named.conf.options 

service bind9 restart 
```

### DHCP Server
Setelah berhasil melakukan setup untuk ``DNS Server``. Sekarang kami berpindah untuk melakukan beberapa konfigurasi yang dibutuhkan pada ``DHCP Server`` sebagai berikut

```sh
echo 'nameserver 192.168.122.1' > /etc/resolv.conf

apt update
apt install isc-dhcp-server -y

echo 'INTERFACESv4="eth0"' > /etc/default/isc-dhcp-server

echo '
# option definitions common to all supported networks...
option domain-name "example.org";
option domain-name-servers ns1.example.org, ns2.example.org;

default-lease-time 600;
max-lease-time 7200;

# have support for DDNS.)
ddns-update-style none;

# A1
subnet 192.173.4.0 netmask 255.255.252.0 {
  range 192.173.4.2 192.173.7.254;
  option routers 192.173.4.1;
  option broadcast-address 192.173.7.255; 
  option domain-name-servers 192.173.1.110;
  default-lease-time 720;
  max-lease-time 7200;
}

# A2
subnet 192.173.8.0 netmask 255.255.248.0 {
  range 192.173.8.2 192.173.15.254;
  option routers 192.173.8.1;
  option broadcast-address 192.173.15.255;
  option domain-name-servers 192.173.1.110;
  default-lease-time 720;
  max-lease-time 7200;
}

# A7
subnet 192.173.2.0 netmask 255.255.254.0 {
  range 192.173.2.2 192.173.3.254;
  option routers 192.173.2.1;
  option broadcast-address 192.173.3.255;
  option domain-name-servers 192.173.1.110;
  default-lease-time 720;
  max-lease-time 7200;
}

# A8
subnet 192.173.1.128 netmask 255.255.255.128 {
  range 192.173.1.131 192.173.1.254;
  option routers 192.173.1.129;
  option broadcast-address 192.173.1.255;
  option domain-name-servers 192.173.1.110;
  default-lease-time 720;
  max-lease-time 7200;
}

# A3
subnet 192.173.1.124 netmask 255.255.255.252 {}

# A4
subnet 192.173.1.120 netmask 255.255.255.252 {}

# A5
subnet 192.173.1.116 netmask 255.255.255.252 {}

# A6
subnet 192.173.1.112 netmask 255.255.255.252 {}

# A9
subnet 192.173.1.108 netmask 255.255.255.252 {}

# A10
subnet 192.173.1.104 netmask 255.255.255.252 {}
' > /etc/dhcp/dhcpd.conf

service isc-dhcp-server start
```

Disini terlihat bahwa ``kami`` juga melakukan setup pada masing-masing ``subnet`` yang nantinya akan digunakan oleh masing-masing client ``dhcp client``.

### DHCP Relay
Untuk ``DHCP Relay`` kita perlu melakukan pertimbangan terlebih dahulu, karena konsep pada ``DHCP Relay`` adalah *DHCP Relay bertindak sebagai perantara antara klien dan server DHCP. Ketika klien mengirim permintaan DHCP, relay menangkap pesan tersebut dan mengirimkannya ke server DHCP melalui unicast (tidak broadcast).*

Sehingga disini kita perlu untuk melakukan ``konfigurasi`` pada router yang berdekatan dengan ``client`` yang akan diberikan ``IP`` oleh DHCP. Sehingga disini kami memberikan ``DHCP Relay`` pada router ``Heiter`` dan ``Himmel``. Karena ``Heiter`` berdekatan dengan client **TurkRegion** dan **GrobeForest**, sedangkan ``Himmel`` berdekatan dengan **LaubHills** dan **SchwerMountain**. Konfigurasinya adalah sebagai berikut

```sh
echo 'nameserver 192.168.122.1' > /etc/resolv.conf

apt update
apt install isc-dhcp-relay -y

echo '
SERVERS="192.173.1.106"
INTERFACES="eth0 eth1 eth2 eth3"
OPTIONS=""
' > /etc/default/isc-dhcp-relay

# Jangan lupa uncomment 
# nano /etc/sysctl.conf
# net.ipv4.ip_forward=1

service isc-dhcp-relay restart
```

Lalu jangan lupa untuk melakukan uncomment ``net.ipv4.ip_forward=1`` pada ``/etc/sysctl.conf`` 

### Web Server
Pada ``web server`` kami akan menggunakan ``apache2`` dan akan dikonfigurasikan untuk router ``Sein`` dan ``Stark`` sebagai berikut 

```sh
echo 'nameserver 192.168.122.1' > /etc/resolv.conf

apt update
apt install apache2 -y
service apache2 start
```

### Client 
Untuk masing-masing client, kita hanya perlu install ``lynx`` karena akan digunakan sebagai testing nantinya

```sh
apt update
apt install lynx -y
```

# Jawaban 

Setelah berhasil melakukan [Konfigurasi](#konfigurasi) seperti diatas, sekarang jangan lupa untuk melakukan ``restart (stop lalu start lagi)`` pada router ``Aura`` karena akan digunakan pada [Soal 1](#soal-1)
 
## Soal 1

### Script 

### Testing

## Soal 2

### Script 

### Testing

## Soal 3

### Script 

### Testing

## Soal 4

### Script 

### Testing

## Soal 5

### Script 

### Testing

## Soal 6

### Script 

### Testing

## Soal 7

### Script 

### Testing

## Soal 8

### Script 

### Testing

## Soal 9

### Script 

### Testing

## Soal 10

### Script 

### Testing