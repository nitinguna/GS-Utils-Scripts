#!/bin/bash
# Copyright (c) 2018-2019 Zebra Technologies Corporation and/or its affiliates. All rights reserved.

pushd $PWD > /dev/null

rm -rf $2

mkdir $2

cp -f $1/boot.img $2/boot.img

cp -f $1/system.img $2/system.img

cp -f $1/vendor.img $2/vendor.img

cp -f $1/dtbo.img $2/dtbo.img

if [ -e $2/dt.img ]; then
    echo "dt.img exist"
else
    echo "copying dt.img"
    cp -f $1/dt.img $2/dt.img
fi

zip -r $2.zip $2

rm -rf $2

echo "Copying to GCP bucket gs://emc-dev-apac-artifacts/njgx68/"


gsutil cp $2.zip gs://emc-dev-apac-artifacts/njgx68/

rm -f $2.zip
 

echo "gsutil cp gs://emc-dev-apac-artifacts/njgx68/$2.zip ."
