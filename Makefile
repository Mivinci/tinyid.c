prefix=/usr/local
incdir=$(prefix)/include
libdir=$(prefix)/lib

LIB=libtinyid.a

all:
	gcc -o $(LIB) -c tinyid.c

.PHONY: install, uninstall, clean

install:
	cp -v $(LIB) $(libdir)
	cp -v tinyid.h $(incdir)

uninstall:
	rm $(libdir)/$(LIB)
	rm $(incdir)/tinyid.h

clean:
	rm *.a a.out