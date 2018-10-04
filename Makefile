
CC ?= gcc

R2 = r2

all: test

clean:
	rm -f tracee

tracee: tracee.c
	 $(CC) -O0 tracee.c -o tracee

test: test-child test-attach

test-child: tracee
	@echo "++++++++++++ TEST WITH CHILD PROCESS ++++++++++++"
	r2 -d tracee -qi test.r2
	@echo "+++++++++++++++++++++++++++++++++++++++++++++++++"

test-attach: tracee
	@echo "++++++++++++ TEST WITH CHILD PROCESS ++++++++++++"
	./tracee & r2 -d $$! -qi test.r2
	@echo "+++++++++++++++++++++++++++++++++++++++++++++++++"
