#!/bin/sh -e
# use musl-cross for cross-compiler

export PATH=/opt/cross/x86_64-linux-musl/bin:$(pwd)/utils:$PATH

: ${A:=$(uname -m)}

export CC="x86_64-linux-musl-gcc"
export CFLAGS="-Os"
export LDFLAGS="-s"

build build-scripts/musl-*
build build-scripts/binutils-*
build build-scripts/gcc-*
build build-scripts/make-*
build build-scripts/linux-*
build build-scripts/busybox-*
build build-scripts/finish
