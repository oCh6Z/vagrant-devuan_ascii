#!/bin/bash

FAIL_RC=2

fail () {
    echo "$1 - failed!" 1>&2
    exit $FAIL_RC
}
