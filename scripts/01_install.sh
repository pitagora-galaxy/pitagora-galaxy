#!/bin/bash

# For EC2: add hostname to /etc/hostname to avoid warnings on sudo
sudo sh -c 'echo 127.0.1.1 $(hostname) >> /etc/hosts'

# INSTALLING OS PACKAGES
sudo apt-get update -y && sudo apt-get install -y \
  sysv-rc-conf \
  gcc \
  make \
  libsqlite3-dev \
  libncurses5-dev \
  zlib1g-dev \
  libbz2-dev \
  libssl-dev \
  mysql-server \
  libmysqlclient-dev \
  apache2 \
  vsftpd \
  acpid \
  default-jdk \
  gfortran \
  g++

# INSTALLING DOCKER - https://docs.docker.com/engine/installation/linux/docker-ce/ubuntu/#set-up-the-repository

# install required packages via apt
sudo apt-get install -y \
  linux-image-extra-$(uname -r) \
  linux-image-extra-virtual \
  apt-transport-https \
  ca-certificates \
  curl \
  software-properties-common

# Add Docker’s official GPG key and repository
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

# Add user 'galaxy' to group 'docker', require re-login to enable docker command without sudo
sudo groupadd docker
sudo usermod -aG docker "${USER}"

# INSTALLING PYTHON
mkdir -p "${HOME}/galaxy-python/install"
cd "${HOME}/galaxy-python"
wget "http://www.python.org/ftp/python/2.7.11/Python-2.7.11.tgz"
tar xvzf Python-2.7.11.tgz
cd Python-2.7.11
./configure --prefix="${HOME}/galaxy-python/install"
make
make install

# SETTING ENVIRONMENTAL VARIABLES
echo 'export PATH=${HOME}/galaxy-python/install/bin:${PATH}' >> "${HOME}/.profile"
echo 'export PYTHONPATH=${HOME}/galaxy-python/install/lib/python2.7/site-packages' >> "${HOME}/.profile"
export PATH=${HOME}/galaxy-python/install/bin:$PATH
export PYTHONPATH=${HOME}/galaxy-python/install/lib/python2.7/site-packages
python --version

# INSTALLING GALAXY
cd
git clone -b release_17.05 https://github.com/galaxyproject/galaxy.git
cd galaxy
./run.sh
