#!/bin/bash
python --version
yum update -y
dnf config-manager --set-enabled crb
dnf install epel-release epel-next-release -y
which ansible
yum install ansible -y
ansible --version
which ansible
