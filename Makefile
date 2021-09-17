PREFIX?=/usr
BIN?=$(PREFIX)/bin

default:
	@printf "Usage:\n\tmake install\tinstall zfetch\n\tmake uninstall\tuninstall zfetch\n"

install:
	@mkdir -p $(DESTDIR)$(PREFIX)/bin
	@cp -p zfetch $(DESTDIR)$(BIN)/zfetch
	@chmod 755 $(DESTDIR)$(PREFIX)/bin/zfetch

uninstall:
	@rm -f $(BIN)/zfetch
