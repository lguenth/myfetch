PREFIX?=/usr
BIN?=$(PREFIX)/bin

default:
	@printf "Usage:\n\tmake install\tinstall myfetch\n\tmake uninstall\tuninstall myfetch\n"

install:
	@mkdir -p $(DESTDIR)$(PREFIX)/bin
	@cp -p myfetch $(DESTDIR)$(BIN)/myfetch
	@chmod 755 $(DESTDIR)$(PREFIX)/bin/myfetch

uninstall:
	@rm -f $(BIN)/myfetch
