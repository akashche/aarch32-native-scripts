#!/bin/bash

set -x

DEBUG_LEVEL=slowdebug
BOOT_JDK=/home/alex/jdk1.8.0_65/

bash ./configure \
    --disable-warnings-as-errors \
    --disable-sjavac \
    --disable-zip-debug-info \
    --with-debug-level=$DEBUG_LEVEL \
    --with-jvm-variants=core \
    --with-boot-jdk=$BOOT_JDK

