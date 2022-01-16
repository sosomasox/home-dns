#!/bin/bash -x

diff named.conf.local /etc/bind/named.conf.local
if [ "$?" != "0" ];then
    sudo cp named.conf.local /etc/bind/named.conf.local
fi

diff named.conf.options /etc/bind/named.conf.options
if [ "$?" != "0" ];then
    sudo cp named.conf.options /etc/bind/named.conf.options
fi

diff home.arpa.zone /var/cache/bind/home.arpa.zone
if [ "$?" != "0" ];then
    sudo cp home.arpa.zone /var/cache/bind/home.arpa.zone
fi

diff home.arpa.rev /var/cache/bind/home.arpa.rev
if [ "$?" != "0" ];then
    sudo cp home.arpa.rev /var/cache/bind/home.arpa.rev
fi

sudo systemctl restart bind9

exit 0
