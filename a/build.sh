#!/bin/bash

set -e
set -x

rm -rf build
mkdir build
pushd build

conan install .. --build=missing

# .. ->  source code, CMakeLists.txt
cmake .. -DCMAKE_BUILD_TYPE=Release
cmake --build .

bin/main
