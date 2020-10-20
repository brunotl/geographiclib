#!/bin/bash

set -e

#add prefab binary to PATH
PATH=$PATH:/home/bruno/devel/prefab/cli/build/install/prefab/bin/

#Path to Android NDK 
ANDROID_NDK=/home/bruno/opt/Android-Sdk/ndk/22.0.7026061

# build all android binary
./build_all_android.sh

# create prefab aar package 
./prefab_build.sh

# deploy package to Local mvm repostory a to OSSRH
./deploy.sh
