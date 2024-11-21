# gcc toolchain

.PHONY: cclibs gmp mpc mpfr isl cloog
cclibs: gmp mpc mpfr isl cloog

gmp:   $(DISTR)/$(GMP_GZ)
mpc:   $(DISTR)/$(MPC_GZ)
mpfr:  $(DISTR)/$(MPFR_GZ)
isl:   $(DISTR)/$(ISL_GZ)
cloog: $(DISTR)/$(CLOOG_GZ)
