
dev: install
	mu-lint

install:
	lm src/main.lsts -o mu-lint.c
	cc -O3 -o mu-lint mu-lint.c
	rm -f mu-lint.c
ifeq ($(shell test -w /usr/local/bin; echo $$?), 0)
	mv mu-lint /usr/local/bin/
else
	mkdir -p $${HOME}/.local/bin
	mv mu-lint $${HOME}/.local/bin/
endif

