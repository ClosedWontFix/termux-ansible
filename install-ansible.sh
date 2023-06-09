#!/data/data/com.termux/files/usr/bin/bash
#
#============================================================================#
#
# install-ansible.sh
#
# Author: ClosedWontFix
# https://github.com/ClosedWontFix/termux-ansible
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

if [[ $(uname -o) != "Android" ]]; then
  echo "This is not Android."
  exit
fi

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

if [[ $? -ne 0 ]]; then
  echo -e "\nPrerequisite package installation failed.\n"
  exit
fi

#pip list --outdated | \
#    grep -Ev '^(Package|-)' | \
#    grep -vw resolvelib \
#    cut -d ' ' -f 1 | \
#    xargs -n1 pip install --upgrade

pip install --upgrade pynacl && \
pip install --upgrade ansible

if [[ $? -eq 0 ]]; then
  echo -e "\nAnsible was installed successfully.  See output below.\n"
  ansible --version
else
  echo -e "\nAnsible installation failed.\n"
fi

