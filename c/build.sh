
# force module_d build from source
conan create . final/testing --build=module_d

# upload
conan upload module_c/0.1@final/testing --all -r=demo-conan-local