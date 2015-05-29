VER=0.3
IN = install
GZ = gzip -fk
PREFIX = /usr/local
BINPROGS = pacstrap-container

all: *.in *.1
	@for f in $(wildcard *.in); do $(IN) $$f $${f%.in}; done
	@$(GZ) $(BINPROGS).1

clean:
	$(RM) $(BINPROGS)
	$(RM) $(BINPROGS).1.gz

install: all
	$(IN) -dm755 $(DESTDIR)$(PREFIX)/bin
	$(IN) -m755 $(BINPROGS) $(DESTDIR)$(PREFIX)/bin
	$(IN) -dm755 $(DESTDIR)$(PREFIX)/share/bash-completion/completions
	$(IN) -m644 bash-completion $(DESTDIR)$(PREFIX)/share/bash-completion/completions/pacstrap-container
	$(IN) -dm755 $(DESTDIR)$(PREFIX)/share/man/man1
	$(IN) -m644 $(BINPROGS).1.gz $(DESTDIR)$(PREFIX)/share/man/man1

uninstall:
	$(RM) $(DESTDIR)$(PREFIX)/bin/$(BINPROGS)
	$(RM) $(DESTDIR)$(PREFIX)/share/bash-completion/completions/pacstrap-container
	$(RM) $(DESTDIR)$(PREFIX)/share/man/man1/$(BINPROGS).1.gz

dist:
	git archive --format=tar.gz --prefix=pacstrap-container-$(VER)/ v$(VER) > pacstrap-container-$(VER).tar.gz

.PHONY: all clean install uninstall dist
