#!/bin/bash


# start
start=`date +%s`


set -ex

# clear all local cache
rm -rf /root/.conan/data/module_*

python build.py
./a/build.sh



# end
end=`date +%s`
runtime=$((end-start))
echo "total time="$runtime