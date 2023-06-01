#!/usr/bin/sh

# Creater directories

mkdir -p ~/gitlab
mkdir -p ~/personal

sudo apt update
sudo apt upgrade -y

sudo apt install -y ansible

ansible-galaxy collection install community.general
