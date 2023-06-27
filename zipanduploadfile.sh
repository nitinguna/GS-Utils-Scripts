#!/bin/bash
# Copyright (c) 2018-2019 Zebra Technologies Corporation and/or its affiliates. All rights reserved.
pushd $PWD > /dev/null
tempfilename=$(basename "$1")
filename="$(date +"%Y_%m_%d_%I_%M_%p")_$tempfilename"
echo $filename
cp $1 "$filename"
zip -r $filename.zip $filename
rm $filename
echo "Copying to GCP bucket gs://emc-dev-apac-artifacts/njgx68/"
gsutil cp $filename.zip gs://emc-dev-apac-artifacts/njgx68/
rm $filename.zip
echo "gsutil cp gs://emc-dev-apac-artifacts/njgx68/$filename.zip ."