# gcc toolchain

BINUTILS_CFG += --with-sysroot=$(ROOT)
# BINUTILS_CFG += --with-isl=$(CROSS)
.PHONY: binutils
binutils: $(CROSS)/bin/$(TARGET)-ld
$(CROSS)/bin/$(TARGET)-ld: $(REF)/$(BINUTILS)/README.md
	rm -rf $(TMP)/$@ ; mkdir $(TMP)/$@ ; cd $(TMP)/$@ ;\
	$(REF)/$(BINUTILS)/$(CFG) $(BINUTILS_CFG) --target=$(TARGET) &&\
	$(MAKE) -j$(CORES) && $(MAKE) install
