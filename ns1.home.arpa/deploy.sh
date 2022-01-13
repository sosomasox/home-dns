#!/bin/bash -x

sudo mv home.arpa.zone home.arpa.rev /var/cache/bind/
sudo systemctl restart bind9

exit 0
