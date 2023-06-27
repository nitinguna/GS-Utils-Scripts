#!/bin/bash
# Copyright (c) 2018-2019 Zebra Technologies Corporation and/or its affiliates. All rights reserved.
pushd $PWD > /dev/null
tempfoldername=$(basename "$1")
foldername="$(date +"%Y_%m_%d_%I_%M_%p")_$tempfoldername"
echo $foldername
cp -r $1 "$foldername"
zip -r $foldername.zip $foldername
rm -rf $foldername
echo "Copying to GCP bucket gs://emc-dev-apac-artifacts/njgx68/"
gsutil cp $foldername.zip gs://emc-dev-apac-artifacts/njgx68/
rm $foldername.zip
echo "gsutil cp gs://emc-dev-apac-artifacts/njgx68/$foldername.zip ."