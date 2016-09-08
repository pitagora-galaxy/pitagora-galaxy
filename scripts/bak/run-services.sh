#!/bin/sh

sudo systemctl start httpd
sudo systemctl start mysqld
sudo systemctl start acpid
sudo systemctl start docker
sudo systemctl start galaxy

sudo systemctl enable httpd.service
sudo systemctl enable mysqld.service
sudo systemctl enable acpid.service
sudo systemctl enable docker.service

sudo systemctl list-unit-files

sudo chkconfig galaxy on
sudo chkconfig
