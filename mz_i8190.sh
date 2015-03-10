#!/bin/sh

export KERNELDIR=`readlink -f .`
export ARCHIVE=$KERNELDIR/installer
ZIP=/media/nas/Intenso-UltraLine-01/Android

NOW=$(date +"%Y%m%d-%H%M")

echo "Bundling installer for I8190"

cd $ARCHIVE/i8190

rm system/lib/modules/*.ko
rm tools/bootimg/kernel/zImage

cp $KERNELDIR/BUILT_I8190/zImage tools/bootimg/kernel/zImage
cp $KERNELDIR/BUILT_I8190/lib/modules/*.ko system/lib/modules/

zip -r $ZIP/I8190/1N4148-kernel-I8190-$NOW.zip *

cd ..
echo "finished"

