#!/bin/bash
set -xe # Enable both debugging and immediate exit on error
yum install -y yum-utils
yum-config-manager --add-repo https://download.docker.com/linux/rhel/docker-ce.repo
yum install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y
systemctl start docker
usermod -aG docker ec2-user

#curl https://raw.githubusercontent.com/gubbalarajesh91/expense-docker/main/install-docker.sh | sudo bash