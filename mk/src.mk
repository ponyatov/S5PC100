# src
C += $(wildcard src/*.c*)
H += $(wildcard inc/*.h*)
F += $(wildcard lib/*.ini) $(wildcard lib/*.f)

CP += tmp/$(MODULE).parser.cpp tmp/$(MODULE).lexer.cpp
HP += tmp/$(MODULE).parser.hpp
