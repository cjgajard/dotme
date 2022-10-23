CFLAGS = -ansi -g -Werror -Wall -Wpedantic #$(shell pkg-config --cflags sdl2)
LIBS = #-lm $(shell pkg-config --libs sdl2)
OUT = a.out
OBJ = $(shell basename $(CURDIR)).o

.PHONY: clean Makeobjects

$(OUT): $(OBJ)
	$(CC) $(CFLAGS) -o $@ $^ $(LIBS)

clean:
	-$(RM) *.o
	-$(RM) $(OUT)

Makeobjects:
	find . -name '*.c' -exec $(CC) -MM {} \; >$@

include Makeobjects
