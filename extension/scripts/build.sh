#! /bin/bash

mkdir build
cd build
python3 ../configure.py -s tf2 --sm-path /sourcemod --hl2sdk-root /sdks --hl2sdk-manifest-path /sdks/hl2sdk-manifests --enable-optimize --target x86_64 
ambuild