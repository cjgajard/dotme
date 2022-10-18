CFLAGS = -ansi -g -Werror -Wall -Wpedantic
LIBS = #-lm
OUT = $(shell basename $(CURDIR))
OBJ = main.o

.PHONY: clean Makeobjects

$(OUT): $(OBJ)
	$(CC) $(CFLAGS) -o $@ $^ $(LIBS)

clean:
	-$(RM) *.o
	-$(RM) $(OUT)

Makeobjects:
	find . -name '*.c' -exec $(CC) -MM {} \; >$@

include Makeobjects
