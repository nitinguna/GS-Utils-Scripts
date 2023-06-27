# GS utils shell scripts
 Uploading/Downloading files/folders to GCP bucket is an efficient way when working on GCP cloud instance.
 This project aims to provide handy script which can be used in daily task such as
 - UL/DL images zip
 - UL/DL particular file (say logs.txt)
 - UL/DL particular folder

**Usage**
```
bash <Script.sh> <options>
```
**Output** 
Script will upload artifacts in GCP bucket and at the end of the script Download path is printed
```
gsutil cp gs://emc-dev-apac-artifacts/njgx68/image.zip .
```
above path can be directly put in desktop command prompt to download file from GCM bucket

## createzip660andupload.sh
**Creates a zip consist of System.img, Boot.img, Vendor.img and DTBO.img and uploads to GCP bucket**
```
bash createzip660andupload.sh <out dir> <zip name>
bash createzip660andupload.sh /build/njgx68/LA.UM.9.2.1.R1/LINUX/android/out/target/product/helios helios-6-27
```
**Output**
gsutil cp gs://emc-dev-apac-artifacts/njgx68/helios helios-6-27.zip .

## zipanduploadfile.sh
**Creates a zip of a file and uploads to GCP bucket**
```
bash zipanduploadfile.sh <file-name>
bash zipanduploadfile.sh /build/njgx68/LA.UM.9.2.1.R1/LINUX/android/helios.log
```
**Output**
gsutil cp gs://emc-dev-apac-artifacts/njgx68/helios-timeStamp.zip .

## zipanduploadfolder.sh
**Creates a zip of a folder and uploads to GCP bucket**
```
bash zipanduploadfolder.sh <folder-name>
bash zipanduploadfolder.sh /build/njgx68/LA.UM.9.2.1.R1/LINUX/android/packages
```
**Output**
gsutil cp gs://emc-dev-apac-artifacts/njgx68/packages-timeStamp.zip .



