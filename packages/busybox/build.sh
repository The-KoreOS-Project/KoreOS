#!/bin/bash
set -e

VERSION="1.38.0"
ROOT=$(realpath ../..)
ARCHIVE="busybox-$VERSION.tar.bz2"
DIR="busybox-$VERSION"

echo "Installing BusyBox static..."
wget -O $ARCHIVE "https://busybox.net/downloads/$ARCHIVE"
tar -xjf "$ARCHIVE"

cd "$DIR"

make menuconfig

make -j"$(nproc)"

make CONFIG_PREFIX="$ROOT/rootfs" install

echo "Finished."
