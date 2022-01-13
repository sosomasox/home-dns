#!/bin/bash -x

sudo cp home.arpa.zone /var/cache/bind/home.arpa.zone
sudo cp home.arpa.rev  /var/cache/bind/home.arpa.rev
sudo systemctl restart bind9

exit 0
