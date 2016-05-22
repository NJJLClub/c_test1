CC=gcc
INCDIR=include
CFLAGS=-I$(INCDIR)
OBJDIR=obj
SRCDIR=src
BINDIR=bin
DEPS=$(INCDIR)/c_test1.h

$(OBJDIR)/%.o : $(SRCDIR)/%.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

$(BINDIR)/c_test1 : $(OBJDIR)/c_test1.o
	$(CC) -o $(BINDIR)/c_test1 $(OBJDIR)/c_test1.o

.PHONY: clean

clean:
	rm $(OBJDIR)/*.o
	rm $(BINDIR)/*


