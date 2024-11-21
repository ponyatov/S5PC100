# var
MODULE = $(notdir $(CURDIR))
CORES  = $(shell grep processor /proc/cpuinfo| wc -l)
