#!/bin/bash

bash install_tool_chain.sh

target=lib

mkdir -p libgit2/build_android
cd libgit2/build_android

cmake -DCMAKE_TOOLCHAIN_FILE=../../toolchain.cmake \
      -DANDROID=1 \
      -DBUILD_SHARED_LIBS=1 \
      -DTHREADSAFE=1 \
      -DBUILD_CLAR=0 \
      -DCMAKE_INSTALL_PREFIX=../../$target \
      ../

cmake --build . --target install
