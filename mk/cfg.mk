# cfg
CFLAGS += -Iinc -Itmp -O0 -g3

XPATH = PATH=$(CROSS)/bin:$(PATH)
CFG   = configure --prefix=$(CROSS)
