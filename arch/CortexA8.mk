ARCH = arm-linux-gnueabihf

QEMU = qemu-system-arm
# QEMU_CFG += -M cubieboard -cpu cortex-a8
QEMU_CFG += -M realview-pb-a8 -cpu cortex-a8

KERNEL_ARCH = arm
