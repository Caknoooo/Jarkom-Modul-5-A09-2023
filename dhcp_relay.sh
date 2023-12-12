# Heiter Himmel Frieren

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