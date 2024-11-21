# rule
bin/$(MODULE): $(C) $(H) $(CP) $(HP)
	$(CXX) $(CFLAGS) -o $@ $(C) $(CP) $(L)

tmp/%.lexer.cpp: src/%.lex
	flex -o $@ $<
tmp/%.parser.cpp: src/%.yacc
	bison -o $@ $<

$(REF)/%/README.md: $(GZ)/%.tar.xz
	cd ref ; xzcat $< | tar -x && touch $@
$(REF)/%/README.md: $(GZ)/%.tar.bz2
	cd ref ; bzcat $< | tar -x && touch $@
$(REF)/%/README.md: $(GZ)/%.tar.gz
	cd ref ;  zcat $< | tar -x && touch $@
