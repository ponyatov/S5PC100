# gcc toolchain

.PHONY: cclibs gmp mpc mpfr isl cloog
cclibs: gmp mpc mpfr isl cloog

gmp:   $(DISTR)/$(GMP_GZ)
mpc:   $(DISTR)/$(MPC_GZ)
mpfr:  $(DISTR)/$(MPFR_GZ)
isl:   $(DISTR)/$(ISL_GZ)
cloog: $(DISTR)/$(CLOOG_GZ)

.PHONY: binutils
binutils: $(REF)/$(BINUTILS)/README.md
	rm -rf $(TMP)/$@ ; mkdir $(TMP)/$@ ; cd $(TMP)/$@ ;\
	$(REF)/$(BINUTILS)/configure --target=$(TARGET)

REF += ref/gambox/README.md
ref/gambox/README.md:
	$(GITREF) -b gambox https://github.com/ponyatov/L.git $(dir $@)
