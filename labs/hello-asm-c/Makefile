CC=gcc
CFLAGS=-std=c89
all: hello-as hello-c hello-c-oneshot

hello-as: hello-as.o
	ld -o $@ $<

hello-as.o: hello-as.s
	nasm -f elf64 -o $@ $<

hello-c: hello-c.o
	ld -o $@ -dynamic-linker /lib/ld-* /usr/lib/crt1.o /usr/lib/crti.o -lc $< /usr/lib/crtn.o

hello-c.o: hello-c.s
	as $< -o $@

hello-c.s: hello-c.c
	$(CC) $(CFLAGS) -S -masm=intel -fverbose-asm $< -o $@

hello-c-oneshot: hello-c.c
	$(CC) $(CFLAGS) -Os $< -o $@

clean:
	rm hello-as hello-as.o hello-c hello-c.s hello-c.o hello-c-oneshot
