# Sein dan Stark

echo 'nameserver 192.168.122.1' > /etc/resolv.conf

apt update
apt install apache2 -y
service apache2 start