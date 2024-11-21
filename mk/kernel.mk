# kernel
.PHONY: kernel
kernel: $(TMP)/.config
	cd $(TMP)/$@ ; make menuconfig
$(TMP)/.config: $(REF)/$(LINUX)/README.md
	rm -rf $(TMP)/$@ ; mkdir $(TMP)/$@ ;\
	cd $(REF)/$(LINUX) ; make O=$(TMP)/$@ ARCH=$(KERNEL_ARCH) allnoconfig
	touch $@
