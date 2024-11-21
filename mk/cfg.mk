# cfg
CFLAGS += -Iinc -Itmp -O0 -g3

XPATH = $(CROSS)/bin:$(PATH)
CFG   = configure --prefix=$(CROSS) --disable-nls --disable-werror
