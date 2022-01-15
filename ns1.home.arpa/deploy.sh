#!/bin/bash -x

sudo cp named.conf.local   /etc/bind/named.conf.local
sudo cp named.conf.options /etc/bind/named.conf.options
sudo cp home.arpa.zone     /var/cache/bind/home.arpa.zone
sudo cp home.arpa.rev      /var/cache/bind/home.arpa.rev
sudo systemctl restart bind9

exit 0
