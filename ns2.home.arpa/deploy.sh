#!/bin/bash -x

sudo cp named.conf.local   /etc/bind/named.conf.local
sudo cp named.conf.options /etc/bind/named.conf.options
sudo rndc reload

exit 0
