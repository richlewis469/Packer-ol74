
#!/usr/bin/env bash

for i in `ls -1 /etc/sysconfig/network-scripts/ifcfg-enp*`; do
  cat << EOF >> $i
IPV6INIT=yes
IPV6_AUTOCONF=yes
IPV6_DEFROUTE=no
IPV6_FAILURE_FATAL=no
# IPV6_DEFAULTGW=xxxx:xxxx::/64
IPV6_PRIVACY=no
EOF
done
systemctl restart network
