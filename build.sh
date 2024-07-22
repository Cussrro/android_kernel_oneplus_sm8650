args="-j$(nproc --all) \
ARCH=arm64 SUBARCH=arm64 \
CC=/home/best/tools/clang/bin/clang \
CLANG_TRIPLE=/home/best/tools/gcc/bin/aarch64-none-linux-gnu- \
CROSS_COMPILE=/home/best/tools/gcc/bin/aarch64-none-linux-gnu- \
CROSS_COMPILE_ARM32= \
-C ./ \
O=../kernel_output/"

rm -rf ../kernel_output
make clean && make mrproper
make ${args} oneplus12_defconfig
make ${args}