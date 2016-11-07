IDIR = ../include
CC=gcc
CFLAGS=-I$(IDIR) -Wall -Werror -g

ODIR = obj
LDIR = ../lib

LIBS = -lm

_DEPS = AddressCard.h
DEPS = $(patsubst %,$(IDIR)/%,$(_DEPS))
OBJ = main.o
TARGET = main

%.o: %.c $(DEPS)
	$(CC) $(CFLAGS) -c -o $@ $<

$(TARGET): $(TARGET).m AddressCard.m AddressBook.m
	$(CC) $(CFLAGS) -o $@ $^ -framework Foundation

clean:
	$(RM) -r $(TARGET) $(TARGET).dSYM
