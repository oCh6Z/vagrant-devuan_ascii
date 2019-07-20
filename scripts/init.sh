#!/bin/bash

upgradeBase () {
    export DEBIAN_FRONTEND=noninteractive
    apt update -y -qq > /dev/null 2>&1
    apt-mark hold grub-pc openssh-server
    apt upgrade -y -qq > /dev/null 2>&1
}

installVBGuest () {
    apt install -y -qq --no-install-recommends linux-headers-$(uname -r) build-essential dkms > /dev/null 2>&1
}

funcs=(upgradeBase installVBGuest)

for func in "${funcs[@]}"
do
    $func || fail $func
done
