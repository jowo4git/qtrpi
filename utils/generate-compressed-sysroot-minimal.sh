#!/bin/bash

source ${0%/*}/common.sh

cd_root

BASE_DIR=dist/sysroot
mkdir -p $BASE_DIR

IMG=$(ls raspbian/*raspbian*.img)
FILENAME=$(basename "$IMG")
BASENAME=${FILENAME%%.*}
FILE_DST=

message 'Compressing sysroot-minimal...'
zip -r -q $ROOT/$BASE_DIR/qtrpi-sysroot-minimal-$BASENAME.zip raspbian/sysroot-minimal