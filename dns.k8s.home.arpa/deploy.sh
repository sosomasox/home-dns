#!/bin/bash -x

sudo mv k8s.home.arpa.zone k8s.home.arpa.rev /var/cache/bind/
sudo systemctl restart bind9

exit 0
