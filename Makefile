# Makefile

CC = gcc
CFLAGS = -Wall -g
BPF_CFLAGS = -O2 -target bpf

all: main bpf_prog

main: src/main.c
	$(CC) $(CFLAGS) -o main src/main.c

bpf_prog: src/bpf_prog.c
	$(CC) $(BPF_CFLAGS) -o bpf_prog src/bpf_prog.c

clean:
	rm -f main bpf_prog