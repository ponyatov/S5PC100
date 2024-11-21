# cclibc

GZS += $(GZ)/$(GMP_GZ)
$(GZ)/$(GMP_GZ):
	$(CURL) $@ $(CCLIBS_URL)/$(GMP_GZ)

GZS += $(GZ)/$(MPFR_GZ)
$(GZ)/$(MPFR_GZ):
	$(CURL) $@ $(CCLIBS_URL)/$(MPFR_GZ)

GZS += $(GZ)/$(MPC_GZ)
$(GZ)/$(MPC_GZ):
	$(CURL) $@ $(CCLIBS_URL)/$(MPC_GZ)

GZS += $(GZ)/$(ISL_GZ)
$(GZ)/$(ISL_GZ):
	$(CURL) $@ $(CCLIBS_URL)/$(ISL_GZ)

GZS += $(GZ)/$(CLOOG_GZ)
$(GZ)/$(CLOOG_GZ):
	$(CURL) $@ $(CCLIBS_URL)/$(CLOOG_GZ)

# gcc

GZS += $(GZ)/$(BINUTILS_GZ)
$(GZ)/$(BINUTILS_GZ):
	$(CURL) $@ $(BINUTILS_URL)/$(BINUTILS_GZ)

GZS += $(GZ)/$(GCC_GZ)
$(GZ)/$(GCC_GZ):
	$(CURL) $@ $(GCC_URL)/$(GCC)/$(GCC_GZ)

# cross ref

REFS += ref/gambox/README.md
ref/gambox/README.md:
	$(GITREF) -b gambox https://github.com/ponyatov/L.git $(dir $@)
