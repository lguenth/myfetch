PREFIX?=/usr
BIN?=$(PREFIX)/bin

default:
	@printf "Usage:\n\tmake install\tinstall zfetch\n\tmake uninstall\tuninstall zfetch\n"
install:
	install -Dm755 zfetch $(BIN)/zfetch
uninstall:
	rm -f $(BIN)/zfetch
