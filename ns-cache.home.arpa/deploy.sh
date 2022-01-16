#!/bin/bash -x

diff named.conf.local /etc/bind/named.conf.local
if [ "$?" != "0" ]; then
    sudo cp named.conf.local /etc/bind/named.conf.local
fi

diff named.conf.options /etc/bind/named.conf.options
if [ "$?" != "0" ]; then
    sudo cp named.conf.options /etc/bind/named.conf.options
fi

sudo systemctl restart bind9

exit 0
