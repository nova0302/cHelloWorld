
CC=gcc
CFLAGS=-g -I./include

SDIR =src
ODIR =obj
_OBJS=$(PGM).o addInt.o
OBJS =$(addprefix $(ODIR)/, $(_OBJS))

BDIR =bin

PGM=HelloWorld

$(BDIR)/$(PGM):$(OBJS)
	if [ ! -d $(BDIR) ];then mkdir $(BDIR); fi
	$(CC) $(CFLAGS) -o $@ $^

$(ODIR)/%.o:$(SDIR)/%.c
	@if [ ! -d $(ODIR) ];then mkdir $(ODIR); fi
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -rf $(OBJS) $(PGM) $(BDIR)/$(PGM)
