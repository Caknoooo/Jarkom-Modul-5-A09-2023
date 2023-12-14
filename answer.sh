# No 1 (Aura)
IPETH0="$(ip -br a | grep eth0 | awk '{print $NF}' | cut -d'/' -f1)"
iptables -t nat -A POSTROUTING -o eth0 -j SNAT --to-source "$IPETH0" -s 192.173.0.0/20

# Soal 2 (Revolte)
# Kalian diminta untuk melakukan drop semua TCP dan UDP kecuali port 8080 pada TCP.
iptables -A INPUT -p tcp --dport 8080 -j ACCEPT
iptables -A INPUT -p tcp -j DROP
iptables -A INPUT -p udp -j DROP

# test bisa menggunakan netcat
# Revolte : nc -l -p [80/8000/8080] (untuk listen)
# TurkRegion : nc 192.173.1.106 [80/8000/8080]
# kalau masukin text di TurkRegion, keluar di Revolte berarti Open. Kalau tidak berarti Filtered

# Soal 3 (Revolte)
# Kepala Suku North Area meminta kalian untuk membatasi DHCP dan DNS Server hanya dapat dilakukan ping oleh maksimal 3 device secara bersamaan, selebihnya akan di drop.
iptables -I INPUT -p icmp -m connlimit --connlimit-above 3 --connlimit-mask 0 -j DROP
iptables -I INPUT -m state --state ESTABLISHED,RELATED -j ACCEPT

# Test Ping 192.173.1.106 bersamaan di 4 client, client ke-4 bakal error

# Soal 4 (Sein dan Stark)
# Lakukan pembatasan sehingga koneksi SSH pada Web Server hanya dapat dilakukan oleh masyarakat yang berada pada GrobeForest.
iptables -A INPUT -p tcp --dport 22 -s 192.173.4.4 -j ACCEPT
iptables -A INPUT -p tcp --dport 22 -j DROP

# Testing dengan menggunakan netcat
# nc -l -p 22 / nc (Sein / Stark)
# nc 192.173.4.2 22 (GrobeForest) -> Success
# nc 192.173.4.2 22 (Client Lain) -> Failed (Connection Refused)

# Soal 5 (Sein dan Stark)
# Selain itu, akses menuju WebServer hanya diperbolehkan saat jam kerja yaitu Senin-Jumat pada pukul 08.00-16.00.
iptables -A INPUT -m time --timestart 08:00 --timestop 16:00 --weekdays Mon,Tue,Wed,Thu,Fri -j ACCEPT
iptables -A INPUT -j REJECT

# Test dengan menggunakan ping
# ping 192.173.4.2 (Sein) -> Success (Jam Kerja)
# ping 192.173.4.2 (Sein) -> Failed (Bukan Jam Kerja)
# Cara cek jam di linux -> date
# Cara mengganti jam di linux -> date --set="2023-12-13 17:00:00"

# Soal 6 (Sein dan Stark)
# Lalu, karena ternyata terdapat beberapa waktu di mana network administrator dari WebServer tidak bisa stand by, sehingga perlu ditambahkan rule bahwa akses pada hari Senin - Kamis pada jam 12.00 - 13.00 dilarang (istirahat maksi cuy) dan akses di hari Jumat pada jam 11.00 - 13.00 juga dilarang (maklum, Jumatan rek).
iptables -A INPUT -m time --timestart 12:00 --timestop 13:00 --weekdays Mon,Tue,Wed,Thu -j REJECT
iptables -A INPUT -m time --timestart 11:00 --timestop 13:00 --weekdays Fri -j REJECT

# Test dengan menggunakan ping
# ping 192.173.4.2 (Sein) -> Success (Jam Kerja)
# ping 192.173.4.2 (Sein) -> Failed (Bukan Jam Kerja)
# Cara cek jam di linux -> date
# Cara mengganti jam di linux -> date --set="2023-12-13 17:00:00"
# Problem -> Harusnya di reject, tapi masih bisa ping karena ada rule di soal 5 yang masih bisa diakses
# Solusi -> Ganti rule di soal 5 menjadi REJECT
# command -> iptables -D INPUT 1 ??? (not fixed yet)

# Soal 7 ()
# Karena terdapat 2 WebServer, kalian diminta agar setiap client yang mengakses Sein dengan Port 80 akan didistribusikan secara bergantian pada Sein dan Stark secara berurutan dan request dari client yang mengakses Stark dengan port 443 akan didistribusikan secara bergantian pada Sein dan Stark secara berurutan.

# Fail
iptables -A PREROUTING -t nat -p tcp --dport 80 -d 192.173.4.2 -m statistic --mode nth --every 2 --packet 0 -j DNAT --to-destination 192.173.4.2:80
iptables -A PREROUTING -t nat -p tcp --dport 80 -d 192.173.4.2 -j DNAT --to-destination 192.173.1.118:80
iptables -A PREROUTING -t nat -p tcp --dport 443 -d 192.173.1.118 -m statistic --mode nth --every 2 --packet 0 -j DNAT --to-destination 192.173.1.118:443
iptables -A PREROUTING -t nat -p tcp --dport 443 -d 192.173.1.118 -j DNAT --to-destination 192.173.4.2:443

# Fail
iptables -A PREROUTING -t nat -p tcp --dport 80 -d 192.173.4.2 -m statistic --mode nth --every 2 --packet 0 -j DNAT --to-destination 192.173.1.118:80
iptables -A PREROUTING -t nat -p tcp --dport 443 -d 192.173.1.118 -m statistic --mode nth --every 2 --packet 0 -j DNAT --to-destination 192.173.4.2:443 

# Penjelasan 
# --dport 80 -> Port 80
# --dport 443 -> Port 443
# --every 2 -> Mengatur distribusi request secara bergantian
# --packet 0 -> Mengatur urutan distribusi request
# --to-destination -> Mengatur ip tujuan

# Soal 8 ()
# Karena berbeda koalisi politik, maka subnet dengan masyarakat yang berada pada Revolte dilarang keras mengakses WebServer hingga masa pencoblosan pemilu kepala suku 2024 berakhir. Masa pemilu (hingga pemungutan dan penghitungan suara selesai) kepala suku bersamaan dengan masa pemilu Presiden dan Wakil Presiden Indonesia 2024.
iptables -A INPUT -p tcp --dport 80 -s 192.173.4.2 -m time --datestart 2024-02-14 --datestop 2024-06-26 -j REJECT

iptables -A INPUT -p tcp -s 192.173.1.106/30 --dport 80 -m time --datestart 2024-02-14 --datestop 2024-06-26 -j DROP
# Test dengan menggunakan nmap
# nmap -p 80