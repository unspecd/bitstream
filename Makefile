PREFIX ?= /usr/local
INCLUDE = $(DESTDIR)/$(PREFIX)/include/bitstream

all:
	@echo "nothing to do"

install:
	@install -d $(INCLUDE)
	@install -m 644 common.h $(INCLUDE)/
	@install -d $(INCLUDE)/dvb
	@install -m 644 dvb/* $(INCLUDE)/dvb
	@install -d $(INCLUDE)/ietf
	@install -m 644 ietf/* $(INCLUDE)/ietf
	@install -d $(INCLUDE)/mpeg
	@install -m 644 mpeg/* $(INCLUDE)/mpeg

uninstall:
	@rm -rf $(INCLUDE)

.PHONY: install uninstall