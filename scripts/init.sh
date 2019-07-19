#!/bin/bash

FAIL_RC=2

fail () {
    echo "$1 - failed!" 1>&2
    exit $FAIL_RC
}

updateBase () {
    export DEBIAN_FRONTEND=noninteractive
    apt -y -qq update 2>/dev/null
    apt-mark hold grub-pc openssh-server
    apt -y -qq upgrade 2>/dev/null
}

funcs=(updateBase)

for func in "${funcs[@]}"
do
    $func || fail $func
done
