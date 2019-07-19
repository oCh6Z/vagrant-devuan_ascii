#!/bin/bash

FAIL_RC=2

fail () {
    echo "$1 - failed!" 1>&2
    exit $FAIL_RC
}

upgradeBase () {
    export DEBIAN_FRONTEND=noninteractive
    apt -y -qq update 2>/dev/null
    apt-mark hold grub-pc openssh-server
    apt -y -qq upgrade 2>/dev/null
}

installVBGuest () {
    apt -y -qq install --no-install-recommends linux-headers-$(uname -r) build-essential dkms 2>/dev/null
}

funcs=(upgradeBase installVBGuest)

for func in "${funcs[@]}"
do
    $func || fail $func
done
