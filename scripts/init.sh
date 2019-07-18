#!/bin/bash

FAIL_RC=2

fail () {
    echo "$1 - failed!" 1>&2
    exit $FAIL_RC
}

updateBase () {
    apt-get -y -q update
}

funcs=(updateBase)

for func in "${funcs[@]}"
do
    $func || fail $func
done
