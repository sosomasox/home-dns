#!/bin/bash -x

diff named.conf.local      /etc/bind/named.conf.local
diff named.conf.options    /etc/bind/named.conf.options
sudo cp named.conf.local   /etc/bind/named.conf.local
sudo cp named.conf.options /etc/bind/named.conf.options
sudo systemctl restart bind9

exit 0
