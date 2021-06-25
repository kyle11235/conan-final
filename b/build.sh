
# start
start=`date +%s`

conan remove "module_b*"
conan create . final/testing


# end
end=`date +%s`
runtime=$((end-start))
echo "total time="$runtime