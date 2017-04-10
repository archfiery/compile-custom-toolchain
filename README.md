It creates a customised toolchain with android NDK and compile the libgit2 
that can be used on android devices.

To create the lib

    chmod u+x android_build.sh
    
    ./android_build.sh

The $NDK_ROOT must be configured.

Also keep in mind that the checkout should be recursive such that libgit2
will be included.
