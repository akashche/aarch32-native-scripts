#!/bin/bash

set -x

DEBUG_LEVEL=slowdebug
BOOT_JDK=/home/$USER/jdk9/build/linux-aarch32-normal-core-fastdebug/images/jdk

bash ./configure \
    --disable-warnings-as-errors \
    --disable-zip-debug-info \
    --disable-sjavac \
    --with-debug-level=$DEBUG_LEVEL \
    --with-jvm-variants=core \
    --with-boot-jdk=$BOOT_JDK

