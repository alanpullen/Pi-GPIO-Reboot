EXECS = gpio-reboot
CC    = gcc $(CFLAGS) -Wall -O3 -fomit-frame-pointer -funroll-loops -s

all: $(EXECS)

gpio-reboot: gpio-reboot.c
	$(CC) $< -o $@
	strip $@

install:
	mv $(EXECS) /usr/local/bin

clean:
	rm -f $(EXECS)
