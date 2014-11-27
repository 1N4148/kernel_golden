#!/bin/sh

GCC_VERSION=4.9
GCC_TOOLCHAIN=Linaro

export USE_CCACHE=1
export CROSS_DIR=/android/arm-cortex_a9-linux-gnueabihf-linaro_4.9.3-2014.11/bin
export CROSS_COMPILE=$CROSS_DIR/arm-eabi-
export ARM_CROSS_COMPILE=$CROSS_COMPILE
export ARCH=arm

echo "Building I8190 CM.....";

export KERNELDIR=`readlink -f .`

echo $KERNELDIR

mv .git .git-halt

export ARCH=arm

if [ ! -f $KERNELDIR/.config ];
then
  make defconfig cm_golden_defconfig
fi

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
cp $KERNELDIR/arch/arm/boot/zImage $KERNELDIR/BUILT_I8190/zImage

mv .git-halt .git

echo "COMPILATION TASKS FOR CM I8190 COMPLETE !!!!!!!!"


