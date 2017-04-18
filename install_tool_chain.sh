toolchain_dir="toolchain"

# clean up the previous build
if [ ! -d $toolchain_dir ]; then
    mkdir $toolchain_dir
else
    rm -rf $toolchain_dir
fi

$NDK_ROOT/build/tools/make-standalone-toolchain.sh \
    --toolchain=arm-linux-androideabi-clang3.3 \
    --platform=android-23 \
    --arch=arm \
    --install-dir=$toolchain_dir
