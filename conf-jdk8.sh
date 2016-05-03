#!/bin/bash

set -x

DEBUG_LEVEL=release
BOOT_JDK=/home/$USER/jdk1.7.0_60/

bash ./configure \
    --disable-sjavac \
    --with-debug-level=$DEBUG_LEVEL \
    --with-jvm-variants=core \
    --with-boot-jdk=$BOOT_JDK

