CC = gcc
CFLAGS = -Wall -Wextra

all: addr stm32f2xx.idc

addr: addr.c stm32f2xx.h core_cm3.h
	$(CC) $(CFLAGS) -o addr addr.c

stm32f2xx.idc: addr
	./addr > stm32f2xx.idc

clean:
	rm -f addr stm32f2xx.idc
