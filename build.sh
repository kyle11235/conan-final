#!/bin/bash

set -ex

# clear all local cache
rm -rf /root/.conan/data/module_*

python build.py
./a/build.sh