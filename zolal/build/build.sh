#!/bin/bash

./copy.sh

export ANDROID_HOME=/home/nournia/Softwares/Android/sdk/

# cordova run android
cordova build --release android

cp platforms/outputs/apk/release/app-release-unsigned.apk Zolal-unsigned.apk

rm Zolal.apk
jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 -keystore sobhe.jks Zolal-unsigned.apk sobhekey
zipalign -v 4 Zolal-unsigned.apk Zolal.apk
rm Zolal-unsigned.apk
