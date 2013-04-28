VERSION = 2.04
PN = checkip

PREFIX ?= /usr
BINDIR = $(PREFIX)/bin
MANDIR = $(PREFIX)/share/man/man1

RM = @rm

all:
	@echo -e '\033[1;32mSetting version\033[0m'
	@sed -i -e 's/@VERSION@/'$(VERSION)'/' common/$(PN)

install-bin:
	@echo -e '\033[1;32mInstalling main script, initd and config...\033[0m'
	install -Dm755 common/$(PN) "$(DESTDIR)$(BINDIR)/$(PN)"

install-man:
	@echo -e '\033[1;32mInstalling manpage...\033[0m'
	install -Dm644 doc/checkip.1 "$(DESTDIR)$(MANDIR)/checkip.1"
	gzip -9 "$(DESTDIR)$(MANDIR)/checkip.1"

uninstall:
	$(RM) "$(DESTDIR)$(BINDIR)/$(PN)"
	$(RM) "$(DESTDIR)$(MANDIR)/$(PN).1.gz"

install: install-bin install-man
