#!/bin/bash

export ARCH=arm64

# GCC from https://github.com/LineageOS/android_prebuilts_gcc_linux-x86_aarch64_aarch64-linux-android-4.9
export BUILD_CROSS_COMPILE=/workspaces/a52s/toolchain/gcc/bin/aarch64-linux-android-

# SD-Clang 10 from https://github.com/xiangfeidexiaohuo/Snapdragon-LLVM
export KERNEL_LLVM_BIN=/workspaces/a52s/toolchain/sdclang/bin/clang

export CLANG_TRIPLE=aarch64-linux-gnu-

make -j$(nproc --all) ARCH=arm64 CROSS_COMPILE=$BUILD_CROSS_COMPILE REAL_CC=$KERNEL_LLVM_BIN CLANG_TRIPLE=$CLANG_TRIPLE vendor/a52sxq_eur_open_defconfig
make -j$(nproc --all) ARCH=arm64 CROSS_COMPILE=$BUILD_CROSS_COMPILE REAL_CC=$KERNEL_LLVM_BIN CLANG_TRIPLE=$CLANG_TRIPLE