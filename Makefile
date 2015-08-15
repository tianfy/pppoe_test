INSTALLDIR = $(ROMFSDIR)

RM	= rm -f

INCLUDE += -I$(ROOTDIR)/user/pppoe_client_mod/include
CFLAGS  += -Wall $(INCLUDE)

PPPOETEST_BIN = pppoetest

PPPOETEST_OBJS = discovery.o pppoe_multiple_mod.o

all: $(PPPOETEST_BIN)

$(PPPOETEST_BIN): $(PPPOETEST_OBJS)
	$(CC) -o $(PPPOETEST_BIN) $(PPPOETEST_OBJS) $(CFLAGS) $(LIBS)

romfs:
	install -D pppoetest $(INSTALLDIR)/bin
	$(STRIP) $(INSTALLDIR)/bin/pppoetest

clean:
	$(RM) pppoetest *.o