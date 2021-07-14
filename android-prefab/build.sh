#!/bin/bash

set -e

#add prefab binary to PATH
PATH=$PATH:/home/bruno/devel/prefab/cli/build/install/prefab/bin/

#Path to Android NDK 

export ANDROID_NDK=$HOME/Android/Sdk/ndk/22.1.7171670/

# build all android binary
./build_all_android.sh

# create prefab aar package 
./prefab_build.sh

# deploy package to Local mvm repostory and to OSSRH
./deploy.sh
