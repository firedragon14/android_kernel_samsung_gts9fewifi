#!/bin/bash
export PLATFORM_VERSION=14
export ANDROID_MAJOR_VERSION=u
export DEPMOD=depmod
export TARGET_SOC=s5e8835

MAKE_ARGS="
LLVM=1 \
LLVM_IAS=1 \
ARCH=arm64 \
CC=clang \
O=out
"
make ${MAKE_ARGS} s5e8835-gts9fewifixx_defconfig
make ${MAKE_ARGS} -j$(nproc)
