#!/bin/sh
export KERNELDIR=`readlink -f .`

mv .git .git-halt

make defconfig cm_golden_defconfig

. $KERNELDIR/.config

echo "BEGINING KERNEL COMPILATION .........."

cd $KERNELDIR/
make -j4 || exit 1

mkdir -p $KERNELDIR/BUILT_I8190/lib/modules
rm $KERNELDIR/BUILT_I8190/lib/modules/*
rm $KERNELDIR/BUILT_I8190/zImage

echo "PREPARING BUILT-PI8190 ..........."
cd $KERNELDIR
find -name '*.ko' -exec cp -av {} $KERNELDIR/BUILT_I8190/lib/modules/ \;
${CROSS_COMPILE}strip --strip-unneeded $KERNELDIR/BUILT_I8190/lib/modules/*

echo "COPYING BUILT-PI8190 ..........."
cp $KERNELDIR/arch/arm/boot/zImage $KERNELDIR/BUILT_I8190/zImage

mv .git-halt .git

echo "COMPILATION TASKS FOR CM I8190 COMPLETE !!!!!!!!"


