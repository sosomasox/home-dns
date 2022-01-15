#!/bin/bash -x

sudo cp named.conf.local   /etc/bind/named.conf.local
sudo cp named.conf.options /etc/bind/named.conf.options
sudo cp k8s.home.arpa.zone /var/cache/bind/k8s.home.arpa.zone
sudo cp k8s.home.arpa.rev  /var/cache/bind/k8s.home.arpa.rev
sudo systemctl restart bind9

exit 0
