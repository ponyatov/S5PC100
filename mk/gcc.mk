# gcc toolchain

GZ += $(DISTR)/$(GCC_GZ)
$(DISTR)/$(GCC_GZ):
	$(CURL) $@ $(GCC_URL)/$(GCC)/$(GCC_GZ)

.PHONY: cclibs gmp mpc mpfr isl cloog
cclibs: gmp mpc mpfr isl cloog

gmp:
mpc:
mpfr:
isl:
cloog:

	$(CURL) $@ $(CCLIBS_URL)/$(GMP_GZ)
/gmp-6.2.1.tar.bz2
/mpc-1.2.1
/mpfr-4.1.0
/isl-0.24.tar.bz2
/cloog-0.18.1.tar.gz
