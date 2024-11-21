# gcc toolchain

.PHONY: cclibs gmp mpc mpfr isl cloog
cclibs: gmp mpc mpfr isl cloog

gmp:   $(GZ)/$(GMP_GZ)
mpc:   $(GZ)/$(MPC_GZ)
mpfr:  $(GZ)/$(MPFR_GZ)
isl:   $(GZ)/$(ISL_GZ)
cloog: $(GZ)/$(CLOOG_GZ)

.PHONY: binutils
binutils: $(REF)/$(BINUTILS)/README.md
	rm -rf $(TMP)/$@ ; mkdir $(TMP)/$@ ; cd $(TMP)/$@ ;\
	$(REF)/$(BINUTILS)/configure --prefix=$(CROSS)/$@ --target=$(TARGET)
