TARGET      = arm-linux-gnueabihf
KERNEL_ARCH = arm

QEMU = qemu-system-arm
# QEMU_CFG += -M cubieboard -cpu cortex-a8
QEMU_CFG += -M realview-pb-a8 -cpu cortex-a8
