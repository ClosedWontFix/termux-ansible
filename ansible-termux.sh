#!/data/data/com.termux/files/usr/bin/bash
#
#============================================================================#
#
# termux-ansible.sh
#
# Author: ClosedWontFix
#     
# This script is offered as reference only.
# No warranty is expressed or implied.  
# Use at your own risk.
#
# Description: Install Ansible on termux
#
# https://github.com/ansible/ansible
# https://github.com/termux/termux-app
#
#============================================================================#

apt update && \
yes | apt upgrade && \
yes | apt install \
    build-essential \
    binutils \
    libsodium \
    libyaml \
    openssl \
    python \
    rust

#pip list --outdated | \
#    grep -Ev '^(Package|-)' | \
#    grep -vw resolvelib \
#    cut -d ' ' -f 1 | \
#    xargs -n1 pip install --upgrade

pip install --upgrade pynacl ansible

ansible --version

