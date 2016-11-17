#!/bin/sh
sudo umount /dev/sdb
sudo umount /dev/sdc
sudo mkdir -p /disk/database
sudo mkdir -p /disk/reference
sudo mkfs -t ext4 /dev/sdb
sudo mkfs -t ext4 /dev/sdc
sudo sh -c 'echo "/dev/sdb /disk/database ext4 defaults 0 0" >> /etc/fstab'
sudo sh -c 'echo "/dev/sdc /disk/reference ext4 defaults 0 0" >> /etc/fstab'
sudo mount -a
df -h
sudo chown galaxy:galaxy /disk/*
cd ~/galaxy
mv database database_bak
ln -s /disk/database
cp -r database_bak/* database/
