# cclibs

.PHONY: cclibs0 gmp0 mpc0 mpfr0 isl0 cloog0
cclibs0: gmp0 mpc0 mpfr0 isl0 cloog0

CCLIBS_CFG = --enable-static --disable-shared

GMP_CFG = $(CCLIBS_CFG)
gmp0:   $(CROSS)/lib/libgmp.a
$(CROSS)/lib/libgmp.a: $(REF)/$(GMP)/README.md
	rm -rf $(TMP)/$(GMP) ; mkdir $(TMP)/$(GMP) ; cd $(TMP)/$(GMP) ;\
	$(REF)/$(GMP)/$(CFG) $(GMP_CFG) && $(MAKE) -j$(CORES) && $(MAKE) install

MPFR_CFG = $(CCLIBS_CFG)
mpfr0:   $(CROSS)/lib/libmpfr.a
$(CROSS)/lib/libmpfr.a: $(REF)/$(MPFR)/README.md
	rm -rf $(TMP)/$(MPFR) ; mkdir $(TMP)/$(MPFR) ; cd $(TMP)/$(MPFR) ;\
	$(REF)/$(MPFR)/$(CFG) $(MPFR_CFG) && $(MAKE) -j$(CORES) && $(MAKE) install

MPC_CFG = $(CCLIBS_CFG) --with-mpfr=$(CROSS)
mpc0:   $(CROSS)/lib/libmpc.a
$(CROSS)/lib/libmpc.a: $(REF)/$(MPC)/README.md
	rm -rf $(TMP)/$(MPC) ; mkdir $(TMP)/$(MPC) ; cd $(TMP)/$(MPC) ;\
	$(REF)/$(MPC)/$(CFG) $(MPC_CFG) && $(MAKE) -j$(CORES) && $(MAKE) install

ISL_CFG = $(CCLIBS_CFG)
isl0:   $(CROSS)/lib/libisl.a
$(CROSS)/lib/libisl.a: $(REF)/$(ISL)/README.md
	rm -rf $(TMP)/$(ISL) ; mkdir $(TMP)/$(ISL) ; cd $(TMP)/$(ISL) ;\
	$(REF)/$(ISL)/$(CFG) $(ISL_CFG) && $(MAKE) -j$(CORES) && $(MAKE) install

CLOOG_CFG = $(CCLIBS_CFG)
cloog0:   $(CROSS)/lib/libcloog-isl.a
$(CROSS)/lib/libcloog-isl.a: $(REF)/$(CLOOG)/README.md
	rm -rf $(TMP)/$(CLOOG) ; mkdir $(TMP)/$(CLOOG) ; cd $(TMP)/$(CLOOG) ;\
	$(REF)/$(CLOOG)/$(CFG) $(CLOOG_CFG) && $(MAKE) -j$(CORES) && $(MAKE) install
