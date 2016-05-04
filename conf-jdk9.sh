#!/bin/bash

set -x

DEBUG_LEVEL=slowdebug
BOOT_JDK=/home/$USER/jdk1.8.0_65/

bash ./configure \
    --disable-warnings-as-errors \
    --disable-zip-debug-info \
    --disable-sjavac \
    --with-debug-level=$DEBUG_LEVEL \
    --with-jvm-variants=core \
    --with-boot-jdk=$BOOT_JDK

