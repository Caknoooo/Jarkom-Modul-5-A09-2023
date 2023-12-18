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
Berikut adalah Rute yang telah kami buat dari hasil [Topologi VLSM](#topologi-vlsm) sebagai berikut 

![image](https://github.com/Caknoooo/Jarkom-Modul-4-A09-2023/assets/92671053/a889600d-b35e-4f3c-8608-68a7a32a1f08)


## Persiapan 

### Tree
Tree yang kami buat didapatkan dari hasil pengelompokkan [Topologi VLSM](#topologi-vlsm) sebagai berikut 

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
apt install netcat -y
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
apt install netcat -y
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
apt install netcat -y
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
apt install netcat -y
apt install apache2 -y
service apache2 start

echo '# If you just change the port or add more ports here, you will likely also
# have to change the VirtualHost statement in
# /etc/apache2/sites-enabled/000-default.conf

Listen 80
Listen 443

<IfModule ssl_module>
        Listen 443
</IfModule>

<IfModule mod_gnutls.c>
        Listen 443
</IfModule>

# vim: syntax=apache ts=4 sw=4 sts=4 sr noet' > /etc/apache2/ports.conf
```

Lalu pada ``/var/www/html/index.html`` di masing-masing node ``Sein`` ataupun ``Start`` tambahkan berikut:
```
echo '# Sein | Stark
Sein | Stark nih' > /var/www/html/index.html
```

### Client 
Untuk masing-masing client, kita hanya perlu install ``lynx`` karena akan digunakan sebagai testing nantinya

```sh
apt update
apt install netcat -y
apt install lynx -y
```

# Jawaban 

Setelah berhasil melakukan [Konfigurasi](#konfigurasi) seperti diatas, sekarang jangan lupa untuk melakukan ``restart (stop lalu start lagi)`` pada router ``Aura`` karena akan digunakan pada [Soal 1](#soal-1)
 
## Soal 1
> Agar topologi yang kalian buat dapat mengakses keluar, kalian diminta untuk mengkonfigurasi Aura menggunakan iptables, tetapi tidak ingin menggunakan MASQUERADE.

### Script 
Ada 2 opsi untuk mengerjakan ``soal`` ini. Yang pertama dari awal langsung dilakukan setup tanpa ``MASQUERADE`` yang kedua bisa langsung tanpa ``MASQUERADE``. Jika memilih opsi yang pertama, maka anda harus melakukan ``restart`` pada node ``Aura`` memastikan bahwa `iptables` sebelumnya sudah tidak ada.  Jika menggunakan cara yang kedua maka tidak perlu untuk melakukan ``restart`` pada node ``Aura``.

Dengan menggunakan cara yang kedua, dilakukan konfigurasi agar topologi dapat mengakses internet keluar (NAT). Tanpa MASQUERADE, konfigurasi dilakukan dengan memanfaatkan scripting sederhana, yaitu dengan menggunakan ``SNAT --to-source`` yang mengarah pada NID dari router yang berhubungan dengan NAT, yaitu **192.173.0.0/20**. Dengan kata lain, ``IP`` tesebut adalah IP terluar / terjauh yang mencakup seluruh ``IP`` yang kita peroleh sebelumnya.

Namun, sebelumnya perlu definisikan ``interface`` mana yang terkoneksi dengan NAT. Pada kasus ini adalah ``Aura``, interface yang berhubungan adalah ``eth0``. Definisi tersebut dapat dimasukkan ke dalam sebuah variabel. Di sini, digunakan variabel bernama ``IPETH0``.

```sh
# No 1 (Aura)
IPETH0="$(ip -br a | grep eth0 | awk '{print $NF}' | cut -d'/' -f1)"
iptables -t nat -A POSTROUTING -o eth0 -j SNAT --to-source "$IPETH0" -s 192.173.0.0/20
```

### Testing
Akan dilakukan 2 testing disini, yaitu sebelum dimasukkanya ``iptables``, dan sesudah dimasukkannya ``iptables``. Disini bebas menggunakan ``node`` apa saja untuk testing. Kami menggunakan ``Richter`` untuk testingnya.

**Sebelum**

![image](https://github.com/Caknoooo/information-security-be/assets/92671053/ac266d7f-a70a-4713-993d-3d6c6723094e)

**Sesudah**

![image](https://github.com/Caknoooo/information-security-be/assets/92671053/8465b6ee-a24b-491e-bc6b-f312a2bbb656)

## Soal 2
> Kalian diminta untuk melakukan drop semua TCP dan UDP kecuali port 8080 pada TCP.

### Script 
Untuk melakukan filtering terhadap ``tcp`` dan ``udp`` dan diizinkannya port ``8080`` yang hanya dapat mengakses nya. Maka diperlukan untuk `mendefinisikan` definisi dari ``IP Address`` serta port ``8080``. Berikut merupakan perintah ``sh`` pada node ``Revolte``

```sh
iptables -A INPUT -p tcp --dport 8080 -j ACCEPT
iptables -A INPUT -p tcp -j DROP
iptables -A INPUT -p udp -j DROP
```

**Penjelasan**
- ``-A INPUT``: Menambahkan aturan ke chain INPUT (rantai yang digunakan untuk lalu lintas yang menuju ke sistem).
- ``-p tcp``: Menentukan protokol yang digunakan, dalam hal ini TCP. --dport 8080: Menentukan port tujuan, dalam hal ini port 8080.
- ``-j ACCEPT``: Menentukan tindakan yang diambil jika paket memenuhi kriteria aturan, dalam hal ini menerima paket.
- ``-j DROP``: Menentukan tindakan yang diambil jika paket memenuhi kriteria aturan, dalam hal ini menolak (DROP) paket.

Jadi, aturan ini memungkinkan lalu lintas TCP yang menuju ke port 8080 untuk diterima.

### Testing
Disini akan dilakukan testing terhadap ``client`` yang akan menuju ``Revolte`` dan dilakukan sebanyak 2 kali (Sukses dan Gagal) dengan bantuan ``netcat``

**Sukses**

Disini akan digunakan port ``8080`` pada koneksi ``tcp``

![image](https://github.com/Caknoooo/information-security-be/assets/92671053/e986af07-9cda-4b5f-a5d7-335100079954)

**Gagal** 

Karena port ``8080`` pada UDP juga tidak di blok, jadi tidak akan saling terkoneksi

![image](https://github.com/Caknoooo/information-security-be/assets/92671053/fc7c8068-211b-4d84-9105-b741c1b39cc6)

port yang lain (yang di blok) -> contoh port ``3000`` dengan tcp

![image](https://github.com/Caknoooo/information-security-be/assets/92671053/96eaedd9-bf5a-496d-b25c-5124f6deabb2)

## Soal 3
> Kepala Suku North Area meminta kalian untuk membatasi DHCP dan DNS Server hanya dapat dilakukan ping oleh maksimal 3 device secara bersamaan, selebihnya akan di drop.

### Script 

Untuk melakukan pembatasan jumlah koneksi, iptables dapat ditambahkan state yang dapat terkoneksi terlebih dahulu. Jenis state yang dapat terkoneksi adalah ``ESTABLISHED`` dan ``RELATED``.

Selanjutnya, dengan memanfaatkan port icmp, dilakukan limit koneksi dengan ``--connlimit-above`` menggunakan parameter 3. Tidak lupa, gunakan mask 0 yang berarti semua akses akan masuk ke dalam filtering dari ``--connlimit``. Jika telah terdapat 3 koneksi, maka koneksi selanjutnya akan di-drop.

```sh
iptables -I INPUT -p icmp -m connlimit --connlimit-above 3 --connlimit-mask 0 -j DROP
iptables -I INPUT -m state --state ESTABLISHED,RELATED -j ACCEPT
```

**Penjelasan**

- ``-I INPUT``: Menyisipkan aturan ke awal chain INPUT.
- ``-p icmp``: Menentukan protokol yang digunakan, dalam hal ini ICMP (Internet Control Message Protocol), yang sering digunakan untuk ping dan pesan kontrol jaringan.
- ``-m connlimit``: Menggunakan modul connlimit untuk membatasi jumlah koneksi.
-  ``--connlimit-above 3``: Menentukan batas atas jumlah koneksi yang diizinkan. Dalam hal ini, aturan ini akan mencoba membatasi jumlah koneksi ICMP di atas 3.
- ``--connlimit-mask 0``: Menetapkan mask untuk mengidentifikasi koneksi. Dengan nilai 0, aturan ini akan membatasi jumlah koneksi berdasarkan alamat IP sumber.
- ``--state ESTABLISHED,RELATED``: Menentukan bahwa aturan ini akan diterapkan pada paket yang terkait dengan koneksi yang sudah didirikan (ESTABLISHED) atau terkait dengan koneksi yang ada (RELATED), misalnya, paket tanggapan terkait permintaan koneksi.
- ``-m state``: Menggunakan modul state untuk mengelola status koneksi.
- ``-j DROP``: Menentukan tindakan yang diambil jika batasan koneksi terlampaui, dalam hal ini menolak (DROP) paket.

Jadi, aturan ini akan menolak paket ICMP jika jumlah koneksi ICMP dari satu alamat IP melebihi 3. Aturan ini juga mengizinkan paket yang terkait dengan koneksi yang sudah didirikan atau terkait dengan koneksi yang ada untuk masuk ke sistem. Ini memastikan bahwa tanggapan dari koneksi yang sudah ada atau paket terkait dengan koneksi yang sudah didirikan diterima.

### Testing

![image](https://github.com/Caknoooo/information-security-be/assets/92671053/e9f421d8-6fc2-437a-a8c6-dcf4babed9c9)

Pada ``GrobeForest`` tidak berhasil melakukan ``ping`` karena ``Revolte`` sudah mencapat 3 koneksi.

## Soal 4
> Lakukan pembatasan sehingga koneksi SSH pada Web Server hanya dapat dilakukan oleh masyarakat yang berada pada GrobeForest.

### Script 
``koneksi SSH / port SSH: 22``
Disini kami melakukan ``iptables`` untuk server yang bertugas sebagai ``Web Server`` yaitu node ``Sein`` dan ``Stark``. Pada node tersebut kami akan mengizinkan port ``22`` dan akan memberikan akses pada client ``GrobeForest``. Tetapi ``GrobeForest`` memiliki IP yang selalu berganti, dikarenakan ``GrobeForest`` mendapatkan IP dari ``DHCP Server``, dan IP tersebut berada di ``range 192.173.4.2 192.173.7.254``

```sh
iptables -A INPUT -p tcp --dport 22 -s 192.173.x.x -j ACCEPT
iptables -A INPUT -p tcp --dport 22 -j DROP
```

**Penjelasan**
- ``-A INPUT``: Menambahkan aturan ke chain INPUT (rantai yang digunakan untuk lalu lintas yang menuju ke sistem).
- ``-p tcp``: Menentukan protokol yang digunakan, dalam hal ini TCP.
- ``--dport 22``: Menentukan port tujuan, dalam hal ini port 22 (umumnya digunakan untuk layanan SSH).
- ``-s 192.173.x.x``: Menentukan alamat sumber yang diizinkan. Dalam hal ini, hanya lalu lintas yang berasal dari alamat IP yang dimulai dengan 192.173.x.x yang diizinkan masuk.
- ``-j ACCEPT``: Menentukan tindakan yang diambil jika paket memenuhi kriteria aturan, dalam hal ini menerima paket.
- ``-j DROP``: Menentukan tindakan yang diambil jika paket memenuhi kriteria aturan, dalam hal ini menolak (DROP) paket.

Jadi, aturan ini memungkinkan lalu lintas TCP yang menuju ke port 22 (SSH) dari alamat IP yang dimulai dengan 192.173.x.x untuk diterima. aturan ini menolak semua lalu lintas TCP yang menuju ke port 22 (SSH). Ini bertentangan dengan aturan sebelumnya yang mengizinkan lalu lintas SSH dari alamat IP tertentu. Oleh karena itu, aturan ini bersifat "penolakan umum" untuk lalu lintas SSH yang tidak sesuai dengan aturan pertama.

### Testing
Disini kami akan melakukan ``testing`` dimana kami akan menggunakan ``GrobeForest`` -> Sukses dan ``TurkRegion`` -> Gagal

**GrobeForest**

![image](https://github.com/Caknoooo/information-security-be/assets/92671053/354beb06-285b-4f9d-bc10-c8200c03925f)

**TurkRegion**

![image](https://github.com/Caknoooo/information-security-be/assets/92671053/6b3027a3-18ef-4bc5-ae5c-5ebed92d539c)

## Soal 5
> Selain itu, akses menuju WebServer hanya diperbolehkan saat jam kerja yaitu Senin-Jumat pada pukul 08.00-16.00.

### Script 
Karena disini akan Webserver hanya dapat diakses pada jam kerja saja, dapat menggunakan bantuan ``time`` dan lebih spesifiknya membutuhkan command ``--weekdays`` untuk membaca hari masuk (Senin, Selasa, Rabu, Kamis, Jumat). Kita juga perlu untuk menggunakan ``timestart`` dan ``timeout`` untuk membatasi akses.

```sh
iptables -A INPUT -m time --timestart 08:00 --timestop 16:00 --weekdays Mon,Tue,Wed,Thu,Fri -j ACCEPT
iptables -A INPUT -j REJECT
```

**Penjelasan**

- ``-A INPUT``: Menambahkan aturan ke chain INPUT (rantai yang digunakan untuk lalu lintas yang menuju ke sistem).
- ``-m time``: Menggunakan modul waktu untuk menentukan aturan berdasarkan waktu.
- ``--timestart 08:00``: Menentukan waktu mulai, dalam hal ini pukul 08:00.
- ``--timestop 16:00``: Menentukan waktu berakhir, dalam hal ini pukul 16:00.
- ``--weekdays Mon,Tue,Wed,Thu,Fri``: Menentukan hari-hari di mana aturan ini berlaku, dalam hal ini Senin sampai Jumat.
- ``-j ACCEPT``: Menentukan tindakan yang diambil jika paket memenuhi kriteria aturan, dalam hal ini menerima paket.
- ``-j REJECT``: Menentukan tindakan yang diambil jika paket tidak memenuhi kriteria aturan, dalam hal ini menolak (REJECT) paket.

Jadi, aturan ini memungkinkan lalu lintas masuk (INPUT) hanya pada rentang waktu antara pukul 08:00 hingga 16:00 pada hari Senin sampai Jumat. Aturan ini juga menolak semua lalu lintas yang tidak sesuai dengan aturan sebelumnya. Ini termasuk lalu lintas di luar rentang waktu atau pada hari yang tidak termasuk dalam Senin sampai Jumat.

### Testing
**Note**: Jika jam / hari berbeda dengan rentang waktu yang telah di ``set`` sebelumnya, maka gunakan ``date --set="2023-12-13 14:00:00"``

Disini kami akan melakukan testing `Sukses` dan `Gagal`

**Sukses**

![image](https://github.com/Caknoooo/information-security-be/assets/92671053/73de3c3e-0b28-4c54-b616-7c38abdec8a8)

**Gagal**

![image](https://github.com/Caknoooo/information-security-be/assets/92671053/f6a11ad2-228b-494c-a66e-c826440e1d0e)

## Soal 6
> Lalu, karena ternyata terdapat beberapa waktu di mana network administrator dari WebServer tidak bisa stand by, sehingga perlu ditambahkan rule bahwa akses pada hari Senin - Kamis pada jam 12.00 - 13.00 dilarang (istirahat maksi cuy) dan akses di hari Jumat pada jam 11.00 - 13.00 juga dilarang (maklum, Jumatan rek).

### Script
Untuk membatasi waktu koneksi, ``iptables`` pada Web Server (Sein dan Stark) perlu dilakukan pendefinisian pada hari yang dapat terkoneksi atau dapat di ``drop``. Karena disini kita akan melakukan ``blok`` pada jam istirahat *weekdays* pada hari ``Senin - Kamis`` pukul ``12.00 - 13.00`` dan ``11.00 - 13.00`` pada hari ``jum'at``. Dapat menggunakan command sebagai berikut

```sh 
iptables -A INPUT -m time --timestart 12:00 --timestop 13:00 --weekdays Mon,Tue,Wed,Thu -j REJECT
iptables -A INPUT -m time --timestart 11:00 --timestop 13:00 --weekdays Fri -j REJECT
```

- ``-A INPUT``: Menambahkan aturan ke chain INPUT (rantai yang digunakan untuk lalu lintas yang menuju ke sistem).
- ``-m time``: Menggunakan modul waktu untuk menentukan aturan berdasarkan waktu.
- ``--timestart 12:00``: Menentukan waktu mulai, dalam hal ini pukul 12:00.
- ``--timestop 13:00``: Menentukan waktu berakhir, dalam hal ini pukul 13:00.
- ``--weekdays Mon,Tue,Wed,Thu``: Menentukan hari-hari di mana aturan ini berlaku, dalam hal ini Senin sampai Kamis.
- ``--timestart 11:00``: Menentukan waktu mulai, dalam hal ini pukul 11:00.
- ``--timestop 13:00``: Menentukan waktu berakhir, dalam hal ini pukul 13:00.
- ``--weekdays Fri``: Menentukan hari di mana aturan ini berlaku, dalam hal ini Jumat.
- ``-j REJECT``: Menentukan tindakan yang diambil jika paket memenuhi kriteria aturan, dalam hal ini menolak (REJECT) paket.

Jadi, aturan ini menolak lalu lintas INPUT pada hari Senin sampai Kamis antara pukul 12:00 dan 13:00. Aturan ini juga menolak lalu lintas INPUT pada hari Jumat antara pukul 11:00 dan 13:00.

### Testing
Pada testing kali ini kami akan mencoba untuk melakukan pada waktu yang telah ditentukan (Gagal) dan waktu yang ``available`` untuk mengakses ``Web Server``

**Sukses**

![image](https://github.com/Caknoooo/information-security-be/assets/92671053/41d20fa3-486b-4463-bb15-55d6c950db0c)

**Gagal**

![image](https://github.com/Caknoooo/information-security-be/assets/92671053/1d1063f3-7a21-4b57-96e1-f37525a2c69d)
 
## Soal 7
> Karena terdapat 2 WebServer, kalian diminta agar setiap client yang mengakses Sein dengan Port 80 akan didistribusikan secara bergantian pada Sein dan Stark secara berurutan dan request dari client yang mengakses Stark dengan port 443 akan didistribusikan secara bergantian pada Sein dan Stark secara berurutan.

### Script
Untuk mengerjakan soal 7 ini diperlukan untuk melakukan setup ``web server`` terlebih dahulu. Pertama diperlukan untuk melakukan ``konfigurasi`` terhadap ``ports.conf`` sebagai berikut

```sh
echo '
Listen 80
Listen 443

<IfModule ssl_module>
        Listen 443
</IfModule>

<IfModule mod_gnutls.c>
        Listen 443
</IfModule>
' > /etc/apache2/ports.conf
```

Lalu buat page atau ``inisialisasi`` sederhana yang menandakan bahwa merupakan pesan dari ``node`` tersebut
```sh
echo '# Sein | Stark
Sein | Stark nih' > /var/www/html/index.html
```

Setelah mengizinkan ``port https``, sekarang saatnya melakukan konfigurasi dengan membuat web server sederhana sebagai berikut 

```sh
echo "
<VirtualHost *:80>
    ServerName 192.173.4.2
    DocumentRoot /var/www/html
    ErrorLog \${APACHE_LOG_DIR}/error.log
    CustomLog \${APACHE_LOG_DIR}/access.log combined
</VirtualHost>
<VirtualHost *:443>
    ServerName 192.173.4.2
    DocumentRoot /var/www/html
    ErrorLog \${APACHE_LOG_DIR}/error.log
    CustomLog \${APACHE_LOG_DIR}/access.log combined
</VirtualHost>
" > /etc/apache2/sites-available/sein.conf

a2ensite sein.conf
service apache2 restart
```

Setelah itu lakukan ``iptables`` pada ``router`` yang mengarah pada ``web server`` yaitu sein dan stark sebagai berikut
```sh
iptables -A PREROUTING -t nat -p tcp --dport 80 -d 192.173.4.2 -m statistic --mode nth --every 2 --packet 0 -j DNAT --to-destination 192.173.4.2:80
iptables -A PREROUTING -t nat -p tcp --dport 80 -d 192.173.4.2 -j DNAT --to-destination 192.173.1.118:80
iptables -A PREROUTING -t nat -p tcp --dport 443 -d 192.173.1.118 -m statistic --mode nth --every 2 --packet 0 -j DNAT --to-destination 192.173.1.118:443
iptables -A PREROUTING -t nat -p tcp --dport 443 -d 192.173.1.118 -j DNAT --to-destination 192.173.4.2:443
```

### Testing
Untuk melakukan ``testing`` hanya perlu melakukan command seperti berikut

```sh
curl 192.173.4.2:80
curl 192.173.1.118:443
```

![image](https://github.com/Caknoooo/Jarkom-Modul-5-A09-2023/assets/92671053/a9d2e625-84c9-4ab5-864a-9f5a282edfc4)

## Soal 8
> Karena berbeda koalisi politik, maka subnet dengan masyarakat yang berada pada Revolte dilarang keras mengakses WebServer hingga masa pencoblosan pemilu kepala suku 2024 berakhir. Masa pemilu (hingga pemungutan dan penghitungan suara selesai) kepala suku bersamaan dengan masa pemilu Presiden dan Wakil Presiden Indonesia 2024

### Script 
Untuk mengerjakan nomor ini diperlukan bantuan ``--datestart`` dan ``--datestop`` untuk melakukan pembatasan akses pada hari-hari tertentu. Disini diperlukan ``subnet`` dari ``Revolte`` karena pembatasn yang diinginkan adalah terhadap subnet. Disini ``subnet`` kami adalah terdapat pada ``A10`` dimana memiliki ip ``192.173.1.104/30`` dan menentukan protokol yang digunakan sebagai berikut 

```sh
iptables -A INPUT -p tcp --dport 80 -s 192.173.1.104/30 -m time --datestart 2023-12-10 --datestop 2024-02-15 -j DROP
```

**Penjelasan**
- ``-A INPUT``: Menambahkan aturan ke chain INPUT (rantai yang digunakan untuk lalu lintas yang menuju ke sistem).
- ``-p tcp``: Menentukan protokol yang digunakan, dalam hal ini TCP.
- ``--dport 80``: Menentukan port tujuan, dalam hal ini port 80 (umumnya digunakan untuk layanan HTTP).
- ``-s 192.173.1.104/30``: Menentukan alamat sumber yang diizinkan. Dalam hal ini, hanya lalu lintas yang berasal dari rentang IP 192.173.1.104 hingga 192.173.1.107 (192.173.1.104/30) yang diizinkan masuk.
- ``-m time --datestart 2023-12-10 --datestop 2024-02-15``: Menggunakan modul waktu untuk menentukan aturan berdasarkan tanggal. Aturan ini akan berlaku mulai dari tanggal 10 Desember 2023 hingga 15 Februari 2024.
- ``-j DROP``: Menentukan tindakan yang diambil jika paket memenuhi kriteria aturan, dalam hal ini menolak (DROP) paket.

### Testing
testing dengan menggunakan ``client``

![image](https://github.com/Caknoooo/Jarkom-Modul-5-A09-2023/assets/92671053/259b6c8a-a1cb-4c8a-aee1-d1ac3832c015)

testing dengan menggunakan ``revolte`` dimana sudah diakukan pemblokan

![image](https://github.com/Caknoooo/Jarkom-Modul-5-A09-2023/assets/92671053/6c0cfc43-12b2-40ca-b970-b792dae8f8b7)

testing dengan menggunkan ``revote`` tetapi di waktu yang diizinkan

![image](https://github.com/Caknoooo/Jarkom-Modul-5-A09-2023/assets/92671053/14a9eb76-14a3-4bb9-9b19-85aa97ea4447)

## Soal 9
> Sadar akan adanya potensial saling serang antar kubu politik, maka WebServer harus dapat secara otomatis memblokir  alamat IP yang melakukan scanning port dalam jumlah banyak (maksimal 20 scan port) di dalam selang waktu 10 menit. (clue: test dengan nmap)

### Script 
Karena pada soal 9 ini kita diperlukan untuk menggunakan *scanning port* maka diperlukan rantai khusus bernama ``portscan``. Rantai ini nantinya dapat digunakan untuk mengelola aturan-aturan terkait dengan deteksi port scanning.

```sh
iptables -N portscan

iptables -A INPUT -m recent --name portscan --update --seconds 600 --hitcount 20 -j DROP
iptables -A FORWARD -m recent --name portscan --update --seconds 600 --hitcount 20 -j DROP

iptables -A INPUT -m recent --name portscan --set -j ACCEPT
iptables -A FORWARD -m recent --name portscan --set -j ACCEPT
```

**Penjelasan**

- ``iptables -N portscan``: Ini membuat rantai khusus bernama portscan. Rantai ini nantinya dapat digunakan untuk mengelola aturan-aturan terkait dengan deteksi port scanning.

```sh
iptables -A INPUT -m recent --name portscan --update --seconds 600 --hitcount 20 -j DROP
```
- ``-m recent --name portscan``: Menggunakan modul recent untuk melacak koneksi atau paket.
- ``--update``: Mengupdate informasi tentang paket terkini.
- ``--seconds 600``: Menetapkan waktu dalam detik, dalam hal ini 600 detik (10 menit).
- ``--hitcount 20``: Menetapkan jumlah hit (pembaruan) yang diperlukan untuk memicu aksi selanjutnya.
- ``-j DROP``: Menentukan tindakan yang diambil jika kriteria aturan terpenuhi, dalam hal ini menolak (DROP) paket.

Jadi, aturan ini akan menolak paket INPUT jika lebih dari 20 pembaruan terjadi dalam jangka waktu 10 menit, yang dapat dianggap sebagai tanda serangan port scanning.

```sh 
iptables -A FORWARD -m recent --name portscan --update --seconds 600 --hitcount 20 -j DROP
```
- Menambahkan aturan ke chain FORWARD.
- Mirip dengan aturan sebelumnya, aturan ini menangani paket yang melewati sistem, yaitu paket yang di-forward. Jika jumlah pembaruan paket melebihi 20 dalam 10 menit, paket akan ditolak.

```sh
iptables -A INPUT -m recent --name portscan --set -j ACCEPT
```

- ``-m recent --name portscan``: Menggunakan modul recent untuk melacak koneksi atau paket.
- ``--set``: Menetapkan informasi terkait dengan paket baru.
- ``-j ACCEPT``: Menentukan tindakan yang diambil jika paket memenuhi kriteria aturan, dalam hal ini menerima paket.

Jadi, aturan ini memungkinkan paket INPUT baru untuk melewati dan menetapkan informasi bahwa paket ini tidak terkait dengan serangan port scanning.

```sh
iptables -A FORWARD -m recent --name portscan --set -j ACCEPT
```

- Menambahkan aturan ke chain FORWARD.
- Mirip dengan aturan sebelumnya, aturan ini memungkinkan paket yang di-forward untuk melewati dan menetapkan informasi bahwa paket ini tidak terkait dengan serangan port scanning.

### Testing
Untuk melakukan testing, kami menggunakan ``ping`` terhadap ``Web Server`` yaitu ``Sein`` 

![image](https://github.com/Caknoooo/information-security-be/assets/92671053/5f2f77a5-5d50-4e2b-ae7f-7ebdf1693a67)

Disaat ``packet`` yang telah terkirim lebih dari 20, maka ``packet`` selanjutnya akan langsung di ``drop``.

## Soal 10
> Karena kepala suku ingin tau paket apa saja yang di-drop, maka di setiap node server dan router ditambahkan logging paket yang di-drop dengan standard syslog level. 

### Script 

### Testing