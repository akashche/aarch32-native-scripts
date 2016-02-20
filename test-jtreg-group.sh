#!/bin/bash

set -x

if [ -z "$1" ]; then
    echo "error: Group name should be specified as a first and only argument"
    exit 1
fi
GROUP_NAME=$1

DEBUG_LEVEL=slowdebug
JDK_SRC_DIR=/home/alex/jdk9/
JDK_BIN_DIR=$JDK_SRC_DIR/build/linux-aarch32-normal-core-$DEBUG_LEVEL/jdk
JTREG_DIR=/home/alex/jtreg
JTREG_OUT_DIR=/home/alex/tmp/jtreg

rm -rf $JTREG_OUT_DIR

STARTED=`date +"%Y-%m-%d %T"`
$JDK_BIN_DIR/bin/java \
    -jar $JTREG_DIR/lib/jtreg.jar \
    -v1 \
    -ovm \
    -r:$JTREG_OUT_DIR/JTreport \
    -w:$JTREG_OUT_DIR/JTwork \
    -jdk:$JDK_BIN_DIR \
    -ignore:quiet \
    $JDK_SRC_DIR/hotspot/test:$GROUP_NAME
echo started: $STARTED
echo finished: `date +"%Y-%m-%d %T"`
