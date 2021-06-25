#!/bin/bash

set -ex

conan remove "module_*"
python build.py