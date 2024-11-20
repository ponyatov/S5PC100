# doc

DOC += doc/S5PC100.pdf
doc/S5PC100.pdf:
	$(CURL) $@ https://www.fdi.ucm.es/profesor/mendias/psyd/docs/S5PC100.pdf

.PHONY: doc
doc: $(DOC)
