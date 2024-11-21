# rule
bin/$(MODULE): $(C) $(H) $(CP) $(HP)
	$(CXX) $(CFLAGS) -o $@ $(C) $(CP) $(L)

tmp/%.lexer.cpp: src/%.lex
	flex -o $@ $<
tmp/%.parser.cpp: src/%.yacc
	bison -o $@ $<
