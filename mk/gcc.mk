# gcc toolchain


CCLIBS_CFG = --enable-static --disable-shared
.PHONY: cclibs gmp mpc mpfr isl cloog
cclibs: gmp mpc mpfr isl cloog

gmp:   $(GZ)/$(GMP_GZ)
mpc:   $(GZ)/$(MPC_GZ)
mpfr:  $(GZ)/$(MPFR_GZ)

ISL_CFG = $(CCLIBS_CFG)
isl:   $(REF)/$(ISL)/README.md
	rm -rf $(TMP)/$@ ; mkdir $(TMP)/$@ ; cd $(TMP)/$@ ;\
	$(REF)/$(ISL)/$(CFG) $(ISL_CFG) && $(MAKE) -j$(CORES) && $(MAKE) install

cloog: $(GZ)/$(CLOOG_GZ)

BINUTILS_CFG += --with-isl=$(TMP)
.PHONY: binutils
binutils: $(REF)/$(BINUTILS)/README.md
	rm -rf $(TMP)/$@ ; mkdir $(TMP)/$@ ; cd $(TMP)/$@ ;\
	$(REF)/$(BINUTILS)/$(CFG)$@ --target=$(TARGET)
