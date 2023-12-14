# Revolte

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

service isc-dhcp-server restart