#!/usr/bin/env bash

mkdir -p /media/dvd
mount -o loop VBoxGuestAdditions*.iso /media/dvd
sh /media/dvd/VBoxLinuxAdditions.run --nox11
umount /media/dvd
rm VBoxGuestAdditions*.iso
