#!/bin/sh

export KERNELDIR=`readlink -f .`
export ARCHIVE=$KERNELDIR/installer
ZIP=/media/nas/Intenso-UltraLine-01/Android

NOW=$(date +"%Y%m%d-%H%M")

echo "Bundling installer for I8190"

cd $ARCHIVE/I8190

rm prebuilt/system/lib/modules/*.ko
rm prebuilt/zImage

cp $KERNELDIR/BUILT_I8190/zImage prebuilt/zImage
cp $KERNELDIR/BUILT_I8190/lib/modules/*.ko prebuilt/system/lib/modules/

zip -r $ZIP/I8190/1N4148-kernel-I8190-$NOW.zip *

cd ..
echo "finished"

