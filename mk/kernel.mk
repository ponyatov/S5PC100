# kernel
.PHONY: kernel
KERNEL_MAKE = make ARCH=$(KERNEL_ARCH)
KERNEL_CONFIGS = $(wildcard all/*.kernel) $(wildcard arch/*.kernel)
kernel: $(TMP)/kernel/.config
	cd $(TMP)/$@ ; $(KERNEL_MAKE) menuconfig
$(TMP)/kernel/.config: mk/kernel.mk $(KERNEL_CONFIGS) $(REF)/$(LINUX)/README.md
	$(MAKE) $(TMP)/kernel
	cd $(REF)/$(LINUX) ; $(KERNEL_MAKE) O=$(TMP)/kernel allnoconfig
	cat $(KERNEL_CONFIGS) >> $@
	echo "CONFIG_LOCALVERSION=\"-$(MODULE)\"" >> $@
$(TMP)/kernel:
	rm -rf $(TMP)/kernel ; mkdir $(TMP)/kernel
