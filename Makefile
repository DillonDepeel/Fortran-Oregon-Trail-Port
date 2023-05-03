.POSIX:
.SUFFIXES:

FC      = f2c
CC      = cc
PREFIX  = /usr/local
FFLAGS  = -A -ext -f
CFLAGS  = -I$(PREFIX)/include/ -L$(PREFIX)/lib/ -w
LDFLAGS = $(PREFIX)/lib/libf2c.a -lm
SRC     = src/oregon.f
TARGET  = oregon

.PHONY: all clean

all: $(TARGET)

$(TARGET):
	$(FC) $(FFLAGS) $(SRC)
	$(CC) $(CFLAGS) -o $(TARGET) oregon.c src/f2c.c $(LDFLAGS)

clean:
	rm $(TARGET) *.c
