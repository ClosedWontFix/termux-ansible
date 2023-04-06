#!/data/data/com.termux/files/usr/bin/bash

apt update && \
yes | apt upgrade && \
yes | apt install \
    build-essential \
    binutils \
    python \
    openssl \
    libsodium \
    libyaml \
    rust

#pip list --outdated | \
#    grep -Ev '^(Package|-)' | \
#    grep -vw resolvelib \
#    cut -d ' ' -f 1 | \
#    xargs -n1 pip install --upgrade

pip install --upgrade pynacl
pip install --upgrade ansible
