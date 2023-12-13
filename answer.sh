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

## Soal 6
