# kernel
.PHONY: kernel
KERNEL_MAKE = make ARCH=$(KERNEL_ARCH)
KERNEL_CONFIGS  = $(wildcard all/*.kernel) $(wildcard hw/*.kernel)
KERNEL_CONFIGS += $(wildcard arch/*.kernel) $(wildcard cpu/*.kernel)
kernel: $(TMP)/kernel/.config
	cd $(TMP)/$@ ; $(KERNEL_MAKE) menuconfig
	cd $(TMP)/$@ ; $(KERNEL_MAKE)
$(TMP)/kernel/.config: mk/kernel.mk $(KERNEL_CONFIGS) $(REF)/$(LINUX)/README.md
	cd $(REF)/$(LINUX) ; $(KERNEL_MAKE) O=$(TMP)/kernel allnoconfig
	cat $(KERNEL_CONFIGS) >> $@
	echo     "CONFIG_LOCALVERSION=\"-$(HW)\"" >> $@
	echo "CONFIG_DEFAULT_HOSTNAME=\"$(HW)\""  >> $@
