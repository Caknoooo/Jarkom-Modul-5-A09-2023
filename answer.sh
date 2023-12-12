# No 1 (Aura)
IPETH0="$(ip -br a | grep eth0 | awk '{print $NF}' | cut -d'/' -f1)"
iptables -t nat -A POSTROUTING -o eth0 -j SNAT --to-source "$IPETH0" -s 192.173.0.0/20

# No 2 (Revolte)
iptables -A INPUT -p tcp --dport 8080 -j ACCEPT
iptables -A INPUT -p tcp -j DROP
iptables -A INPUT -p udp -j DROP

# test bisa menggunakan netcat
# Revolte : nc -l -p [80/8000/8080] / nc
# TurkRegion : nc 192.173.1.106 [80/8000/8080]
# kalau masukin text di TurkRegion, keluar di Revolte berarti Open. Kalau tidak berarti Filtered

# No 3 (Revolte)
iptables -I INPUT -p icmp -m connlimit --connlimit-above 3 --connlimit-mask 0 -j DROP
iptables -I INPUT -m state --state ESTABLISHED,RELATED -j ACCEPT

# Test Ping 192.173.1.106 bersamaan di 4 client, client ke-4 bakal error
