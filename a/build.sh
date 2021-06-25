#!/bin/bash

SHELL_DIR=$(dirname "$BASH_SOURCE")
APP_DIR=$(cd $SHELL_DIR; pwd)

set -e
set -x

rm -rf $APP_DIR/build
mkdir $APP_DIR/build
pushd $APP_DIR/build

conan install .. --build=missing

# .. ->  source code, CMakeLists.txt
cmake .. -DCMAKE_BUILD_TYPE=Release
cmake --build .

$APP_DIR/bin/main
