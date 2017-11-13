#!/bin/bash

useradd vagrant
echo "vagrant" | passwd --stdin vagrant
echo "vagrant        ALL=(ALL)       NOPASSWD: ALL" >> /etc/sudoers

cd ~vagrant
mkdir -p ~vagrant/.ssh
wget -q --no-check-certificate -O ~vagrant/.ssh/authorized_keys 'https://raw.github.com/mitchellh/vagrant/master/keys/vagrant.pub'
chown -R vagrant:vagrant ~vagrant/.ssh
chmod -R go-rwsx ~vagrant/.ssh
