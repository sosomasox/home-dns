#!/bin/bash -x

sudo timedatectl set-timezone Asia/Tokyo
sudo apt update
sudo apt install -y bind9
sudo mkdir /var/log/named
sudo chown bind:bind /var/log/named

exit 0
