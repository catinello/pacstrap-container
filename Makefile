PREFIX = /usr/local
BINPROGS = pacstrap-container

all: $(wildcard *.in)
	@for f in $(wildcard *.in); do install $$f $${f%.in}; done

clean:
	$(RM) $(BINPROGS)

install: all
	install -dm755 $(DESTDIR)$(PREFIX)/bin
	install -m755 $(BINPROGS) $(DESTDIR)$(PREFIX)/bin
	install -dm755 $(DESTDIR)$(PREFIX)/share/bash-completion/completions/
	install -Dm644 bash-completion $(DESTDIR)$(PREFIX)/share/bash-completion/completions/pacstrap-container

uninstall:
	$(RM) $(DESTDIR)$(PREFIX)/bin/$(BINPROGS)
	$(RM) $(DESTDIR)$(PREFIX)/share/bash-completion/completions/pacstrap-container


.PHONY: all clean install uninstall
