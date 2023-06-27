# GS utils shell scripts
 Uploading/Downloading files/folders to GCP bucket is an efficient way when working on GCP cloud instance.
 This project aims to provide handy script which can be used in daily task such as
 - UL/DL images zip
 - UL/DL particular file (say logs.txt)
 - UL/DL particular folder

## Usage
```
bash <Script.sh> <options>
```
## output 
Script will upload artifacts in GCP bucket and at the end of the script Download path is printed
```
gsutil cp gs://emc-dev-apac-artifacts/njgx68/image.zip .
```
above path can be directly put in desktop command prompt to download file from GCM bucket


