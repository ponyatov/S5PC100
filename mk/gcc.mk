# gcc toolchain

GZ += $(DISTR)/$(GCC_GZ)
$(DISTR)/$(GCC_GZ):
	$(CURL) $@ $(GCC_URL)/$(GCC)/$(GCC_GZ)

.PHONY: cclibs gmp mpc mpfr isl cloog
cclibs: gmp mpc mpfr isl cloog

gmp:   $(DISTR)/$(GMP_GZ)
mpc:   $(DISTR)/$(MPC_GZ)
mpfr:  $(DISTR)/$(MPFR_GZ)
isl:   $(DISTR)/$(ISL_GZ)
cloog: $(DISTR)/$(CLOOG_GZ)

GZ += $(DISTR)/$(GMP_GZ)
$(DISTR)/$(GMP_GZ):
	$(CURL) $@ $(CCLIBS_URL)/$(GMP_GZ)

GZ += $(DISTR)/$(MPFR_GZ)
$(DISTR)/$(MPFR_GZ):
	$(CURL) $@ $(CCLIBS_URL)/$(MPFR_GZ)

GZ += $(DISTR)/$(MPC_GZ)
$(DISTR)/$(MPC_GZ):
	$(CURL) $@ $(CCLIBS_URL)/$(MPC_GZ)

GZ += $(DISTR)/$(ISL_GZ)
$(DISTR)/$(ISL_GZ):
	$(CURL) $@ $(CCLIBS_URL)/$(ISL_GZ)

GZ += $(DISTR)/$(CLOOG_GZ)
$(DISTR)/$(CLOOG_GZ):
	$(CURL) $@ $(CCLIBS_URL)/$(CLOOG_GZ)
